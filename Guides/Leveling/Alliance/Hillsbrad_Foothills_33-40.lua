-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Hillsbrad Foothills (33-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Swamp of Sorrows (35-42)",
	rev = "1e974d45",
}, [[
step
  ding 31
step
  note {fp}Darla Harris
  goto Hillsbrad Foothills 49.34,52.27 |tip {vendor}
step
  only haveq(510)
  note Bring the Foreboding Plans to Magistrate Maleb in Southshore.
  talk Magistrate Henry Maleb##2276
  turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11
step
  only haveq(511)
  note Bring the Encrypted Letter to Loremaster Dibbs in Southshore.
  talk Loremaster Dibbs##2277
  turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09
step
  only haveq(95534)
  talk Kundric Zanden##2378
  turnin Strahnbrad Mystery##95534 |goto Hillsbrad Foothills 48.64,59.01
step
  only haveq(95786)
  note Find Loremaster Dibbs in Southshore and bring him the Savage Coast Report Bundle.
  talk Loremaster Dibbs##2277
  turnin An Acquaintance in Southshore##95786 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Magistrate Henry Maleb##2276
  accept Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Phin Odelic##2711
  accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.35,59.05
step
  talk Emissary Jacques##247264
  accept An Alarming Request##92432 |goto Hillsbrad Foothills 48.33,60.03
step
  talk Barkeep Kelly##2366
  accept Talk of the Town##98463 |goto Hillsbrad Foothills 51.57,58.57
step
  only completed(511)
  talk Loremaster Dibbs##2277
  accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Darren Malvew##2382
  accept Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  talk Marshal Redpath##2263
  accept Crushridge Bounty##500 |goto Hillsbrad Foothills 49.47,58.73
step
  only completed(510)
  talk Magistrate Henry Maleb##2276
  accept Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
  note Darren Malvew of Southshore wants you to kill 8 Mountain Lions and 10 Hulking Mountain Lions.
  kill Mountain Lion##2406 |q 564/1 |goto Hillsbrad Foothills 38.8,24.62
  kill Hulking Mountain Lion##2407 |q 564 |goto Alterac Mountains 66.75,51.11
step
  talk Darren Malvew##2382
  turnin Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  kill Shadowy Assassin##2434 |goto Hillsbrad Foothills 50.06,57.91 |tip Loot the quest item here — it starts the quest.
  accept Assassin's Contract##522 |goto Hillsbrad Foothills 50.06,57.91
step
  note Bring the Assassin's Contract to Magistrate Maleb in Southshore.
  talk Magistrate Henry Maleb##2276
  turnin Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Magistrate Henry Maleb##2276
  accept Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(95786)
  talk Loremaster Dibbs##2277
  accept Take Two With Water##95787 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(95786)
  note Use the hide and charcoal to create rubbings of the tablets found in the Drowned City.
  collect The First Tablet of I'lalai##270308 |q 95787/1
  collect The Second Tablet of I'lalai##270309 |q 95787/2
  collect The Third Tablet of I'lalai##270310 |q 95787/3
  collect The Fourth Tablet of I'lalai##270311 |q 95787
step
  only completed(95786) level>=40
  talk Loremaster Dibbs##2277
  accept Magics of the Drowned City##95788 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(95786) haveq(95788)
  note Collect 5 I'lalai Fetishes from trolls in the Drowned City.
  collect 5 I'lalai Fetish##270343 |q 95788 |goto Hillsbrad Foothills 50.57,57.09 |elite |tip {dropsfrom}Risen Sentry, Profane Necromancer, Undying Offering
step
  only completed(95786)
  talk Loremaster Dibbs##2277
  turnin Take Two With Water##95787 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(95786) haveq(95788)
  talk Loremaster Dibbs##2277
  turnin Magics of the Drowned City##95788 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(95786) completed(95788)
  talk Loremaster Dibbs##2277
  accept The Web of Magic##95798 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(95786)
  talk Loremaster Dibbs##2277
  accept Findings for the Explorer's League##95799 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(95786) haveq(95798)
  note Bring the I'lalai Fetish to Abra Cadabra in Dalaran.
  talk Abra Cadabra##252019
  turnin The Web of Magic##95798 |goto Alterac Mountains 12.01,70.45 |tip {turninat}Alterac Mountains
step
  note Kill 12 Syndicate Footpads and 8 Syndicate Thieves, then return to Magistrate Henry Maleb in Southshore.
  kill Syndicate Thief##2241 |q 505/2 |goto Alterac Mountains 48.74,82.99
  kill Syndicate Footpad##2240 |q 505 |goto Alterac Mountains 57.71,67.64
step
  only completed(510)
  note Bring 7 Alterac Signet Rings to Magistrate Maleb in Southshore.
  collect 7 Alterac Signet Ring##3505 |q 512 |goto Alterac Mountains 60.76,43.88 |tip {dropsfrom}Syndicate Spy, Syndicate Sentry, Syndicate Wizard
step
  note Gather 9 Dirty Knucklebones from Crushridge ogres in the Alterac Mountains. Bring them to Marshal Redpath in Southshore.
  collect 9 Dirty Knucklebones##2843 |q 500 |goto Alterac Mountains 49.93,42.09 |tip {dropsfrom}Crushridge Ogre, Crushridge Brute, Crushridge Mauler
step
  note Bring the Head of Baron Vardus to Magistrate Maleb in Southshore.
  collect Head of Baron Vardus##3626 |q 523 |goto Alterac Mountains 56.28,26.7 |tip {dropsfrom}Baron Vardus
step
  talk Magistrate Henry Maleb##2276
  turnin Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(510)
  talk Magistrate Henry Maleb##2276
  turnin Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Magistrate Henry Maleb##2276
  turnin Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Marshal Redpath##2263
  turnin Crushridge Bounty##500 |goto Hillsbrad Foothills 49.47,58.73
step
  only level>=40
  talk Marshal Redpath##2263
  accept Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  note Find Quae and Kinelory near the Go'Shek Farm in the Arathi Highlands.
  talk Quae##2712
  turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.18,53.85 |tip {turninat}Arathi Highlands
step
  note Report to the Image of Archmage Modera near the City of Dalaran.
  talk Image of Archmage Modera##269127
  turnin An Alarming Request##92432 |goto Silverpine Forest 68.62,45.13 |tip {turninat}Silverpine Forest
step
  note Visit Nixxrax Fillamug in the Salty Sailor Tavern in Booty Bay in Stranglethorn.
  talk Nixxrax Fillamug##2832
  turnin Talk of the Town##98463 |goto Stranglethorn Vale 27.04,77.17 |tip {turninat}Stranglethorn Vale
step
  only completed(337)
  talk Milton Sheaf##1440
  accept Southshore##538 |goto Stormwind City 77.07,30.21
step
  only completed(337)
  note Speak with Loremaster Dibbs in Southshore.
  talk Loremaster Dibbs##2277
  turnin Southshore##538 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(337)
  talk Loremaster Dibbs##2277
  accept Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(511)
  note Take the Cleverly Encrypted Letter to Prospector Stormpike in Ironforge.
  talk Prospector Stormpike##1356
  turnin Letter to Stormpike##514 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  only completed(511)
  talk Prospector Stormpike##1356
  accept Further Mysteries##525 |goto Ironforge 74.64,11.74
step
  only completed(95786)
  note Bring Loremaster Dibbs' I'lalai Translations to Historian Karnik in Ironforge.
  talk Historian Karnik##2916
  turnin Findings for the Explorer's League##95799 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  only completed(337)
  note Bring 5 Recovered Tomes and the Worn Leather Book containing The Arm of Gri'lek to Loremaster Dibbs in Southshore.
  collect 5 Recovered Tome##3658 |q 540/1 |goto Alterac Mountains 49.93,42.09 |tip {dropsfrom}Crushridge Ogre, Crushridge Brute, Crushridge Mauler
  collect Worn Leather Book##3659 |q 540 |goto Alterac Mountains 38.42,46.38 |tip {dropsfrom}Weathered Bookcase
step
  only haveq(504)
  note Slay 15 Crushridge Warmongers, then return to Marshal Redpath in Southshore.
  kill Crushridge Warmonger##2287 |q 504 |goto Alterac Mountains 36.3,53.79 |elite
step
  only completed(337)
  talk Loremaster Dibbs##2277
  turnin Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  only completed(337)
  talk Loremaster Dibbs##2277
  accept Return to Milton##542 |goto Hillsbrad Foothills 50.57,57.09
step
  only haveq(504)
  talk Marshal Redpath##2263
  turnin Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  only completed(511)
  note Bring the Decrypted Letter to Magistrate Maleb in Southshore.
  talk Magistrate Henry Maleb##2276
  turnin Further Mysteries##525 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(511)
  talk Magistrate Henry Maleb##2276
  accept Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
step
  only completed(337)
  note Bring the Tomes of Alterac to Milton Sheaf in Stormwind.
  talk Milton Sheaf##1440
  turnin Return to Milton##542 |goto Stormwind City 77.07,30.21 |tip {turninat}Stormwind City
step
  only completed(511)
  note Kill 4 Argus Shadow Mages.
  kill Argus Shadow Mage##2318 |q 537 |goto Alterac Mountains 62.34,40.58
step
  only completed(511)
  talk Magistrate Henry Maleb##2276
  turnin Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
step
  note {travel}Swamp of Sorrows
  goto Swamp of Sorrows 25.98,31.4
]])
