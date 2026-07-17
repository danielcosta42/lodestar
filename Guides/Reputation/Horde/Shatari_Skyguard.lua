-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Sha'tari Skyguard", {
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
  talk Severin##23042
  accept World of Shadows##11004 |goto Terokkar Forest 64.05,66.88
step
  kill Talonpriest Ishaal##23066 |goto Terokkar Forest 69.0,78.54 |tip Loot the quest item here — it starts the quest.
  accept Ishaal's Almanac##11021 |goto Terokkar Forest 69.0,78.54
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
  note Retrieve Maggoc's Treasure Chest and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Maggoc##20600 |goto Blade's Edge Mountains 58.59,60.8 |elite
  click Maggoc's Treasure Chest##185569 |tip {spawnsafter}Maggoc
  collect Maggoc's Treasure Chest##32380 |q 10996 |goto Blade's Edge Mountains 58.59,60.8
step
  note Retrieve Slaag's Standard and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Slaag##22199 |goto Terokkar Forest 20.17,18.1 |elite
  click Slaag's Standard##185574 |tip {spawnsafter}Slaag
  collect Slaag's Standard##32382 |q 10997 |goto Terokkar Forest 20.17,18.1
step
  note Severin wants you to venture into Skettis and retrieve 6 Shadow Dusts from the arakkoa that dwell there.
  collect 6 Shadow Dust##32388 |q 11004 |goto Terokkar Forest 69.85,79.32 |tip {dropsfrom}Skettis Wing Guard, Skettis Windwalker, Skettis Talonite
step
  note Use the Nether Ray Cage in the woods south of Blackwind Landing and slay Blackwind Warp Chasers near the Hungry Nether Ray. Return to Skyguard Handler Deesak when you've completed your task.
  get Hungry Nether Rays |q 11093 |goto Terokkar Forest 63.5,65.81
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
  talk Yuula##23449
  accept To Skettis!##11098 |goto Shattrath City 64.33,42.33
step
  note Retrieve Grulloc's Dragon Skull and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  kill Grulloc##20216 |goto Blade's Edge Mountains 60.92,47.61 |elite
  collect Grulloc's Dragon Skull##32379 |q 10995 |goto Blade's Edge Mountains 60.92,47.61
step
  note Obtain an Elixir of Shadows from Severin and use it to find and slay Talonpriest Ishaal, Talonpriest Skizzik and Talonpriest Zellek in Skettis. Return to Commander Adaris after completing this task.
  kill Talonpriest Ishaal##23066 |q 11005 |goto Terokkar Forest 69.0,78.54
step
  collect Shadow Dust##32388 |q 11006 |goto Terokkar Forest 69.85,79.32 |tip {dropsfrom}Skettis Wing Guard, Skettis Windwalker, Skettis Talonite
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
  note You must retrieve Vim'gol's Vile Grimoire. Deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Vim'gol's Vile Grimoire##32358 |q 10998 |goto Blade's Edge Mountains 55.49,44.86
step
  note Seek out Monstrous Kaliri Eggs on the tops of Skettis dwellings and use the Skyguard Blasting Charges on them. Return to Sky Sergeant Doryn.
  get Fires Over Skettis |q 11008 |goto Terokkar Forest 70.04,80.35
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
  note Retrieve Skulloc's Soul and deliver it to Mog'dorg the Wizened atop the tower at the Circle of Blood in the Blade's Edge Mountains.
  collect Skulloc's Soul##32383 |q 11000 |goto Blade's Edge Mountains 55.49,44.86
step
  note Obtain Hazzik's Package at his dwelling in eastern Skettis and return to him with it.
  collect Hazzik's Package##32687 |q 11056 |goto Terokkar Forest 74.85,80.08
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
  note Use the Shabby Arakkoa Disguise to obtain the Adversarial Bloodlines from Sahaak and return to Hazzik.
  collect Adversarial Bloodlines##32742 |q 11029 |goto Terokkar Forest 64.23,66.97
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
  talk Skyguard Khatie##23335
  accept Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Hazzik##23306
  accept Adversarial Blood##11885 |goto Terokkar Forest 64.23,66.97
step
  note Chu'a'lor has tasked you with gathering 5 Apexis Shards. Bring them to him at Ogri'la atop the Blade's Edge Mountains.
  collect 5 Apexis Shard##32569 |q 11025 |goto Blade's Edge Mountains 28.84,81.09 |tip {dropsfrom}Abyssal Flamebringer, Wrath Hound, Hemathion
step
  note Skyguard Khatie has asked you to wrangle 5 Aether Rays. After you have done so, return them to her at the Skyguard Outpost atop the Blade's Edge Mountains.
  use Wrangled Aether Ray##23343 |q 11065 |tip {useit}
step
  note Find the Skull Piles in the middle of the summoning circles of Skettis. Summon and defeat each of the descendants by using 10 Time-Lost Scrolls at the Skull Pile. Return to Hazzik at Blackwind Landing.
  kill Darkscreecher Akkarai##23161 |q 11885 |elite
step
  talk Chu'a'lor##23233
  turnin The Crystals##11025 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Skyguard Khatie##23335
  turnin Wrangle Some Aether Rays!##11065 |goto Blade's Edge Mountains 27.95,51.45
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
  talk Skyguard Khatie##23335
  accept Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Sky Commander Adaris##23038
  accept Terokk's Downfall##11073 |goto Terokkar Forest 64.09,66.9
step
  talk Hazzik##23306
  accept Tokens of the Descendants##11074 |goto Terokkar Forest 64.23,66.97
step
  talk Sky Commander Keller##23334
  accept To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
step
  note Torkus has asked you to obtain an Unstable Flask of the Beast for him. Return with it to him at Ogri'la atop the Blade's Edge Mountains.
  collect Unstable Flask of the Beast##32598 |q 11030 |goto Blade's Edge Mountains 28.38,57.64
step
  note Skyguard Khatie has asked you to wrangle 5 Aether Rays. After you have done so, return them to her at the Skyguard Outpost atop the Blade's Edge Mountains.
  use Wrangled Aether Ray##23343 |q 11066 |tip {useit}
step
  note Take the Time-Lost Offering prepared by Hazzik to the Skull Pile at the center of Skettis and summon and defeat Terokk. Return to Sky Commander Adaris when you've completed this task.
  kill Terokk##21838 |q 11073 |elite
step
  note Collect Time-Lost Scrolls from the time-lost arakkoa in Skettis and bring them to a Skull Pile inside a summoning circle in Skettis. Summon and defeat the descendants of Terokk's adversaries and return to Hakkiz with Akkarai's Talon, Garokk's Spine, Vekkaz's Scale and Gezzarak's Claw.
  collect Akkarai's Talons##32715 |q 11074 |goto Terokkar Forest 64.23,66.97 |tip {dropsfrom}Darkscreecher Akkarai
step
  note Sky Commander Keller has asked you to acquire Dragon Teeth and return them to him at the Skyguard Outpost atop the Blade's Edge Mountains.
  kill Rivendark##23061 |goto Blade's Edge Mountains 30.43,58.58 |elite
  collect Dragon Teeth##32732 |q 11078 |goto Blade's Edge Mountains 30.43,58.58
step
  talk Torkus##23316
  turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.38,57.64
step
  talk Chu'a'lor##23233
  turnin An Apexis Relic##11058 |goto Blade's Edge Mountains 28.76,57.36
step
  talk Skyguard Khatie##23335
  turnin Wrangle More Aether Rays!##11066 |goto Blade's Edge Mountains 27.95,51.45
step
  talk Sky Commander Adaris##23038
  turnin Terokk's Downfall##11073 |goto Terokkar Forest 64.09,66.9
step
  talk Hazzik##23306
  turnin Tokens of the Descendants##11074 |goto Terokkar Forest 64.23,66.97
step
  talk Sky Commander Keller##23334
  turnin To Rule The Skies##11078 |goto Blade's Edge Mountains 27.38,52.68
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
  only Druid
  talk Sky Sergeant Vanderlip##23120
  accept Bombing Run##11102 |goto Blade's Edge Mountains 27.56,52.9
step
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bombing Run |q 11010 |goto Blade's Edge Mountains 27.56,52.9
step
  note Chu'a'lor has asked you to obtain an Apexis Guardian's Head for him as proof. Return with it to him at Ogri'la atop the Blade's Edge Mountains once you have done so.
  collect Apexis Guardian's Head##32697 |q 11059 |goto Blade's Edge Mountains 28.76,57.36 |tip {dropsfrom}Apexis Guardian
step
  only Druid
  note Sky Sergeant Vanderlip has tasked you with the bombing of 15 Fel Cannonball Stacks. Return to her at the Skyguard Outpost atop the Blade's Edge Mountains once you have done so.
  get Bombing Run |q 11102 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Sky Sergeant Vanderlip##23120
  turnin Bombing Run##11010 |goto Blade's Edge Mountains 27.56,52.9
step
  talk Chu'a'lor##23233
  turnin Guardian of the Monument##11059 |goto Blade's Edge Mountains 28.76,57.36
step
  only Druid
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
