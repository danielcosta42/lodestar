-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Sha'tari Skyguard", {
	faction = "Alliance",
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
  talk Severin##23042
  accept World of Shadows##11004 |goto Terokkar Forest 64.05,66.88
step
  talk Sky Sergeant Vanderlip##23120
  accept Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Skyguard Khatie##23335
  accept Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Skyguard Handler Deesak##23415
  accept Hungry Nether Rays##11093 |goto Terokkar Forest 63.5,65.81
step
  talk Yuula##23449
  accept Threat from Above##11096 |goto Shattrath City 64.33,42.33
step
  talk Sky Commander Keller##23334
  accept Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.38,52.68
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
  talk Severin##23042
  turnin World of Shadows##11004 |goto Terokkar Forest 64.05,66.88
step
  talk Sky Commander Adaris##23038
  turnin Ishaal's Almanac##11021 |goto Terokkar Forest 64.09,66.9
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Skyguard Khatie##23335
  turnin Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Skyguard Handler Deesak##23415
  turnin Hungry Nether Rays##11093 |goto Terokkar Forest 63.5,65.81
step
  talk Yuula##23449
  turnin Threat from Above##11096 |goto Shattrath City 64.33,42.33
step
  talk Aether-tech Apprentice##23473
  turnin Assault on Bash'ir Landing!##11119 |goto Blade's Edge Mountains 27.9,52.16
step
  talk Mog'dorg the Wizened##22941
  accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Sky Commander Adaris##23038
  accept Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.09,66.9
step
  talk Severin##23042
  accept More Shadow Dust##11006 |goto Terokkar Forest 64.05,66.88
step
  talk Sky Commander Adaris##23038
  accept An Ally in Lower City##11024 |goto Terokkar Forest 64.09,66.9
step
  talk Skyguard Khatie##23335
  accept Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Sky Commander Keller##23334
  accept To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
step
  talk Yuula##23449
  accept To Skettis!##11098 |goto Shattrath City 64.33,42.33
step
  note Obtain an Elixir of Shadows from Severin and use it to find and slay Talonpriest Ishaal, Talonpriest Skizzik and Talonpriest Zellek in Skettis. Return to Commander Adaris after completing this task.
  kill Talonpriest Ishaal##23066 |q 11005 |goto Terokkar Forest 69.0,78.54
step
  talk Mog'dorg the Wizened##22941
  turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Sky Commander Adaris##23038
  turnin Secrets of the Talonpriests##11005 |goto Terokkar Forest 64.09,66.9
step
  talk Severin##23042
  turnin More Shadow Dust##11006 |goto Terokkar Forest 64.05,66.88
step
  talk Rilak the Redeemed##22292
  turnin An Ally in Lower City##11024 |goto Shattrath City 52.54,21.01
step
  talk Skyguard Khatie##23335
  turnin Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Sky Commander Keller##23334
  turnin To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
step
  talk Sky Sergeant Doryn##23048
  turnin To Skettis!##11098 |goto Terokkar Forest 64.55,66.7
step
  talk Mog'dorg the Wizened##22941
  accept Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Sky Sergeant Doryn##23048
  accept Fires Over Skettis##11008 |goto Terokkar Forest 64.55,66.7
step
  talk Rilak the Redeemed##22292
  accept Countdown to Doom##11028 |goto Shattrath City 52.54,21.01
step
  talk Skyguard Prisoner##23383
  accept Escape from Skettis##11085 |goto Terokkar Forest 75.07,86.3
step
  note Seek out Monstrous Kaliri Eggs on the tops of Skettis dwellings and use the Skyguard Blasting Charges on them. Return to Sky Sergeant Doryn.
  kill Monstrous Kaliri Egg Trigger##22991 |q 11008 |goto Terokkar Forest 70.04,80.35
step
  talk Mog'dorg the Wizened##22941
  turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Sky Sergeant Doryn##23048
  turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.55,66.7
step
  talk Sky Commander Adaris##23038
  turnin Countdown to Doom##11028 |goto Terokkar Forest 64.09,66.9
step
  talk Sky Sergeant Doryn##23048
  turnin Escape from Skettis##11085 |goto Terokkar Forest 64.55,66.7
step
  talk Mog'dorg the Wizened##22941
  accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Hazzik##23306
  accept Hazzik's Bargain##11056 |goto Terokkar Forest 64.23,66.97
step
  talk Mog'dorg the Wizened##22941
  turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Hazzik##23306
  turnin Hazzik's Bargain##11056 |goto Terokkar Forest 64.23,66.97
step
  talk Mog'dorg the Wizened##22941
  accept Ogre Heaven##11009 |goto Blade's Edge Mountains 55.49,44.86
step
  talk Hazzik##23306
  accept A Shabby Disguise##11029 |goto Terokkar Forest 64.23,66.97
step
  talk Chu'a'lor##23233
  turnin Ogre Heaven##11009 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Hazzik##23306
  turnin A Shabby Disguise##11029 |goto Terokkar Forest 64.23,66.97
step
  talk Chu'a'lor##23233
  accept The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Hazzik##23306
  accept Adversarial Blood##11885 |goto Terokkar Forest 64.23,66.97
step
  talk Chu'a'lor##23233
  turnin The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Hazzik##23306
  turnin Adversarial Blood##11885 |goto Terokkar Forest 64.23,66.97
step
  talk Torkus##23316
  accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Chu'a'lor##23233
  accept An Apexis Relic##11058 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Commander Adaris##23038
  accept Terokk's Downfall##11073 |goto Terokkar Forest 64.09,66.9
step
  talk Hazzik##23306
  accept Tokens of the Descendants##11074 |goto Terokkar Forest 64.23,66.97
step
  talk Torkus##23316
  turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Chu'a'lor##23233
  turnin An Apexis Relic##11058 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Commander Adaris##23038
  turnin Terokk's Downfall##11073 |goto Terokkar Forest 64.09,66.9
step
  talk Hazzik##23306
  turnin Tokens of the Descendants##11074 |goto Terokkar Forest 64.23,66.97
step
  talk Chu'a'lor##23233
  accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Commander Keller##23334
  turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains 27.38,52.68
step
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11010 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Chu'a'lor##23233
  accept Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11010 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Chu'a'lor##23233
  turnin Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
]])
