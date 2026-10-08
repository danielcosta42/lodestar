-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Hillsbrad Foothills (33-38)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Loch Modan (23-38)",
}, [[
step
  only completed(2947)
  talk Talvash del Kissel##6826
  accept Gnome Improvement##2948 |goto Ironforge 36.38,3.61
step
  only completed(2947)
  note Bring the Brilliant Gold Ring, a Silver Bar, a Moss Agate, and 30 silver coins to Talvash del Kissel in Ironforge.
  collect Silver Bar##2842 |q 2948 |goto Ironforge 36.38,3.61 |tip {dropsfrom}Battered Chest, Tattered Chest
step
  note {fp}Darla Harris
  goto Hillsbrad Foothills 49.34,52.27 |tip {vendor}
step
  talk Magistrate Henry Maleb##2276
  accept Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Phin Odelic##2711
  accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.35,59.05
step
  talk Darren Malvew##2382
  accept Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  talk Bartolo Ginsetti##2438
  accept Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.43,55.53
step
  note Darren Malvew of Southshore wants you to kill 8 Mountain Lions and 10 Hulking Mountain Lions.
  kill Mountain Lion##2406 |q 564 |goto Hillsbrad Foothills 38.8,24.62
step
  note Bring Bartolo Ginsetti of Southshore a Bolt of Wool, a Hillman's Cloak, Fine Thread and 10 clumps of Yeti Fur.
  collect Bolt of Woolen Cloth##2997 |q 565 |goto Hillsbrad Foothills 77.35,38.8 |tip {dropsfrom}Tattered Chest, Battered Chest, Solid Chest
step
  talk Darren Malvew##2382
  turnin Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  talk Bartolo Ginsetti##2438
  turnin Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.43,55.53
step
  talk Marshal Redpath##2263
  accept Crushridge Bounty##500 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Quae##2712
  turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.18,53.85 |tip {turninat}Arathi Highlands
step
  only completed(2947)
  talk Talvash del Kissel##6826
  turnin Gnome Improvement##2948 |goto Ironforge 36.38,3.61 |tip {turninat}Ironforge
step
  kill Shadowy Assassin##2434 |goto Hillsbrad Foothills 50.06,57.91 |tip Loot the quest item here — it starts the quest.
  accept Assassin's Contract##522 |goto Hillsbrad Foothills 50.06,57.91
step
  only completed(337)
  talk Milton Sheaf##1440
  accept Southshore##538 |goto Stormwind City 77.07,30.21
step
  note Kill 12 Syndicate Footpads and 8 Syndicate Thieves, then return to Magistrate Henry Maleb in Southshore.
  kill Syndicate Footpad##2240 |q 505 |goto Alterac Mountains 57.71,67.64
step
  note Gather 9 Dirty Knucklebones from Crushridge ogres in the Alterac Mountains. Bring them to Marshal Redpath in Southshore.
  collect 9 Dirty Knucklebones##2843 |q 500 |goto Alterac Mountains 49.93,42.09 |tip {dropsfrom}Crushridge Ogre, Crushridge Brute, Crushridge Mauler
step
  talk Magistrate Henry Maleb##2276
  turnin Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Marshal Redpath##2263
  turnin Crushridge Bounty##500 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Magistrate Henry Maleb##2276
  turnin Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(337)
  talk Loremaster Dibbs##2277
  turnin Southshore##538 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(337)
  talk Loremaster Dibbs##2277
  accept Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Marshal Redpath##2263
  accept Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Magistrate Henry Maleb##2276
  accept Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(337)
  note Bring 5 Recovered Tomes and the Worn Leather Book containing The Arm of Gri'lek to Loremaster Dibbs in Southshore.
  collect 5 Recovered Tome##3658 |q 540 |goto Alterac Mountains 49.93,42.09 |tip {dropsfrom}Crushridge Ogre, Crushridge Brute, Crushridge Mauler
step
  note Slay 15 Crushridge Warmongers, then return to Marshal Redpath in Southshore.
  kill Crushridge Warmonger##2287 |q 504 |goto Alterac Mountains 36.3,53.79 |elite
step
  note Bring the Head of Baron Vardus to Magistrate Maleb in Southshore.
  collect Head of Baron Vardus##3626 |q 523 |goto Alterac Mountains 56.28,26.7 |tip {dropsfrom}Baron Vardus
step
  only completed(337)
  talk Loremaster Dibbs##2277
  turnin Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Marshal Redpath##2263
  turnin Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Magistrate Henry Maleb##2276
  turnin Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(337)
  talk Loremaster Dibbs##2277
  accept Return to Milton##542 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(337)
  talk Milton Sheaf##1440
  turnin Return to Milton##542 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  note {travel}Loch Modan
  goto Loch Modan 37.3,46.52
]])
