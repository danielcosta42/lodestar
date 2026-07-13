-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Hillsbrad Foothills (32-40)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Desolace (33-42)",
}, [[
step
  note {fp}Darla Harris
  goto Hillsbrad Foothills 49.34,52.27 |tip {vendor}
step
  talk Marshal Redpath##2263
  accept Crushridge Bounty##500 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Magistrate Henry Maleb##2276
  accept Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Magistrate Henry Maleb##2276
  accept Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Loremaster Dibbs##2277
  accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Magistrate Henry Maleb##2276
  accept Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Lieutenant Farren Orinelle##2228
  accept Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Magistrate Henry Maleb##2276
  accept Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Loremaster Dibbs##2277
  accept Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Loremaster Dibbs##2277
  accept Stormpike's Deciphering##554 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Chef Jessen##2430
  accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  talk Darren Malvew##2382
  accept Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  talk Bartolo Ginsetti##2438
  accept Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.43,55.53
step
  talk Phin Odelic##2711
  accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.35,59.05
step
  talk Raleigh the Devout##3980
  accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  talk Huraan##17218
  accept Missing Crystals##9435 |goto Hillsbrad Foothills 50.99,58.69
step
  note Kill 4 Argus Shadow Mages.
  kill Argus Shadow Mage##2318 |q 537 |goto Alterac Mountains 58.7,40.58
step
  note Darren Malvew of Southshore wants you to kill 8 Mountain Lions and 10 Hulking Mountain Lions.
  kill Mountain Lion##2406 |q 564 |goto Hillsbrad Foothills 38.8,24.62
step
  note Kill 10 Torn Fin Tidehunters and 10 Torn Fin Oracles for Lieutenant Farren Orinelle in Southshore.
  kill Torn Fin Tidehunter##2377 |q 536 |goto Hillsbrad Foothills 42.69,68.82
step
  note Kill 12 Syndicate Footpads and 8 Syndicate Thieves, then return to Magistrate Henry Maleb in Southshore.
  kill Syndicate Footpad##2240 |q 505 |goto Alterac Mountains 57.71,68.04
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore.
  kill High Inquisitor Whitemane##3977 |q 1053 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Magistrate Henry Maleb##2276
  turnin Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Prospector Stormpike##1356
  turnin Letter to Stormpike##514 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Prospector Stormpike##1356
  turnin Stormpike's Deciphering##554 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Magistrate Henry Maleb##2276
  turnin Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Chef Jessen##2430
  turnin Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  talk Magistrate Henry Maleb##2276
  turnin Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Quae##2712
  turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.18,53.85 |tip {turninat}Arathi Highlands
step
  talk Marshal Redpath##2263
  turnin Crushridge Bounty##500 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Darren Malvew##2382
  turnin Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  talk Bartolo Ginsetti##2438
  turnin Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.43,55.53
step
  talk Lieutenant Farren Orinelle##2228
  turnin Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Magistrate Henry Maleb##2276
  turnin Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Huraan##17218
  turnin Missing Crystals##9435 |goto Hillsbrad Foothills 50.99,58.69
step
  talk Loremaster Dibbs##2277
  turnin Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Raleigh the Devout##3980
  turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  talk Marshal Redpath##2263
  accept Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Loremaster Dibbs##2277
  accept Return to Milton##542 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Lieutenant Farren Orinelle##2228
  accept Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.39
step
  note Slay 10 Crushridge Warmongers, then return to Marshal Redpath in Southshore.
  kill Crushridge Warmonger##2287 |q 504 |goto Alterac Mountains 36.3,53.86
step
  talk Lieutenant Farren Orinelle##2228
  turnin Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Marshal Redpath##2263
  turnin Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Milton Sheaf##1440
  turnin Return to Milton##542 |goto Stormwind City 74.18,7.46 |tip {turninat}Stormwind City
step
  talk Lieutenant Farren Orinelle##2228
  accept Farren's Proof##560 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Marshal Redpath##2263
  turnin Farren's Proof##560 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Marshal Redpath##2263
  accept Farren's Proof##561 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Lieutenant Farren Orinelle##2228
  turnin Farren's Proof##561 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Lieutenant Farren Orinelle##2228
  accept Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.39
step
  note Kill 10 Daggerspine Shorehunters and 10 Daggerspine Sirens for Lieutenant Farren Orinelle in Southshore.
  kill Daggerspine Shorehunter##2369 |q 562 |goto Hillsbrad Foothills 57.74,69.11
step
  talk Lieutenant Farren Orinelle##2228
  turnin Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Lieutenant Farren Orinelle##2228
  accept Reassignment##563 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Major Samuelson##2439
  turnin Reassignment##563 |goto Stormwind City 72.57,15.88 |tip {turninat}Stormwind City
step
  note {travel}Desolace
  goto Desolace 66.74,10.87
]])
