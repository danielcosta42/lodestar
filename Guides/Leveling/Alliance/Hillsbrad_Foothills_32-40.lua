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
  note Gather 9 Dirty Knucklebones from Crushridge ogres in the Alterac Mountains. Bring them to Marshal Redpath in Southshore.
  collect 9 Dirty Knucklebones##2843 |q 500 |goto Alterac Mountains 50.15,43.25 |tip {dropsfrom}Crushridge Ogre, Crushridge Brute, Crushridge Mauler
step
  talk Magistrate Henry Maleb##2276
  accept Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Magistrate Henry Maleb##2276
  accept Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
  note Bring 7 Alterac Signet Rings to Magistrate Maleb in Southshore.
  collect 7 Alterac Signet Ring##3505 |q 512 |goto Alterac Mountains 61.03,43.86 |tip {dropsfrom}Syndicate Spy, Syndicate Sentry, Syndicate Saboteur
step
  talk Loremaster Dibbs##2277
  accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Magistrate Henry Maleb##2276
  accept Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  note Bring the Head of Baron Vardus to Magistrate Maleb in Southshore.
  collect Head of Baron Vardus##3626 |q 523 |goto Alterac Mountains 47.83,17.11 |tip {dropsfrom}Baron Vardus
step
  talk Lieutenant Farren Orinelle##2228
  accept Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Loremaster Dibbs##2277
  accept Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  note Bring 5 Recovered Tomes and the Worn Leather Book containing The Arm of Gri'lek to Loremaster Dibbs in Southshore.
  collect 5 Recovered Tome##3658 |q 540 |goto Alterac Mountains 50.15,43.25 |tip {dropsfrom}Crushridge Ogre, Crushridge Brute, Crushridge Mauler
step
  talk Loremaster Dibbs##2277
  accept Stormpike's Deciphering##554 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Chef Jessen##2430
  accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  note Bring 10 pieces of Turtle Meat and some Soothing Spices to Chef Jessen in Southshore.
  collect 10 Turtle Meat##3712 |q 555 |goto Alterac Mountains 30.81,45.85 |tip {dropsfrom}Snapjaw, Saltwater Snapjaw, Sparkleshell Tortoise
step
  talk Darren Malvew##2382
  accept Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  talk Bartolo Ginsetti##2438
  accept Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.43,55.53
step
  note Bring Bartolo Ginsetti of Southshore a Bolt of Wool, a Hillman's Cloak, Fine Thread and 10 clumps of Yeti Fur.
  collect Bolt of Woolen Cloth##2997 |q 565 |goto Ghostlands 14.66,26.99 |tip {dropsfrom}Tattered Chest, Battered Chest, Solid Chest
step
  talk Phin Odelic##2711
  accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.35,59.05
step
  talk Raleigh the Devout##3980
  accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  talk Elling Trias##482
  accept The Missing Diplomat##1248 |goto Stormwind City 59.91,64.18
step
  talk Connor Rivers##5081
  accept James Hyal##1301 |goto Stormwind City 40.63,91.87
step
  talk Roetten Stonehammer##5637
  accept Reclaimers' Business in Desolace##1453 |goto Ironforge 69.95,21.26
step
  talk High Tinker Mekkatorque##7937
  accept The Grand Betrayal##2929 |goto Ironforge 68.75,48.97
step
  talk Talvash del Kissel##6826
  accept Gnome Improvement##2948 |goto Ironforge 36.38,3.61
step
  note Bring the Brilliant Gold Ring, a Silver Bar, a Moss Agate, and 30 silver coins to Talvash del Kissel in Ironforge.
  collect Silver Bar##2842 |q 2948 |goto Azuremyst Isle 28.62,68.23 |tip {dropsfrom}Battered Chest, Tattered Chest
step
  only Warlock
  talk Briarthorn##5172
  accept Knowledge of the Orb of Orahil##4965 |goto Ironforge 50.35,5.66
step
  only Warlock
  talk Zevrost##3326
  accept Knowledge of the Orb of Orahil##4967 |goto Orgrimmar 48.47,45.43
step
  talk Huraan##17218
  accept Missing Crystals##9435 |goto Hillsbrad Foothills 50.99,58.69
step
  note Retrieve the Shipment of Rare Crystals from the Forsaken and return it to Huraan in Southshore.
  collect Shipment of Rare Crystals##23646 |q 9435 |goto Hillsbrad Foothills 55.57,35.22 |tip {dropsfrom}Unopened Crate
step
  note Kill 10 Torn Fin Tidehunters and 10 Torn Fin Oracles for Lieutenant Farren Orinelle in Southshore.
  kill Torn Fin Tidehunter##2377 |q 536 |goto Hillsbrad Foothills 42.69,68.82
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore.
  kill High Inquisitor Whitemane##3977 |q 1053 |goto Scarlet Monastery - Dungeon -1,-1 |elite
step
  note Darren Malvew of Southshore wants you to kill 8 Mountain Lions and 10 Hulking Mountain Lions.
  kill Mountain Lion##2406 |q 564 |goto Hillsbrad Foothills 38.8,24.62
step
  note Venture to Gnomeregan and kill Mekgineer Thermaplugg. Return to High Tinker Mekkatorque when the task is complete.
  kill Mekgineer Thermaplugg##7800 |q 2929 |goto Gnomeregan - Dungeon -1,-1
step
  note Kill 12 Syndicate Footpads and 8 Syndicate Thieves, then return to Magistrate Henry Maleb in Southshore.
  kill Syndicate Footpad##2240 |q 505 |goto Alterac Mountains 57.71,68.04
step
  talk Magistrate Henry Maleb##2276
  turnin Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Prospector Stormpike##1356
  turnin Letter to Stormpike##514 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Talvash del Kissel##6826
  turnin Gnome Improvement##2948 |goto Ironforge 36.38,3.61 |tip {turninat}Ironforge
step
  talk Magistrate Henry Maleb##2276
  turnin Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Quae##2712
  turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.18,53.85 |tip {turninat}Arathi Highlands
step
  talk Vincent Hyal##5082
  turnin James Hyal##1301 |goto Wetlands 8.39,61.75 |tip {turninat}Wetlands
step
  talk Lieutenant Farren Orinelle##2228
  turnin Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Loremaster Dibbs##2277
  turnin Preserving Knowledge##540 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Raleigh the Devout##3980
  turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.47,58.35
step
  talk Prospector Stormpike##1356
  turnin Stormpike's Deciphering##554 |goto Ironforge 74.64,11.74 |tip {turninat}Ironforge
step
  talk Chef Jessen##2430
  turnin Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
  talk Kreldig Ungor##5638
  turnin Reclaimers' Business in Desolace##1453 |goto Desolace 66.2,9.63 |tip {turninat}Desolace
step
  talk Darren Malvew##2382
  turnin Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
  talk Bartolo Ginsetti##2438
  turnin Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.43,55.53
step
  talk Huraan##17218
  turnin Missing Crystals##9435 |goto Hillsbrad Foothills 50.99,58.69
step
  talk Mikhail##4963
  turnin The Missing Diplomat##1248 |goto Wetlands 10.6,60.77 |tip {turninat}Wetlands
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4965 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  only Warlock
  talk Menara Voidrender##6266
  turnin Knowledge of the Orb of Orahil##4967 |goto The Barrens 62.51,35.45 |tip {turninat}The Barrens
step
  talk High Tinker Mekkatorque##7937
  turnin The Grand Betrayal##2929 |goto Ironforge 68.75,48.97 |tip {turninat}Ironforge
step
  talk Marshal Redpath##2263
  turnin Crushridge Bounty##500 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Magistrate Henry Maleb##2276
  turnin Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Marshal Redpath##2263
  accept Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Prospector Stormpike##1356
  accept Further Mysteries##525 |goto Ironforge 74.64,11.74
step
  talk Loremaster Dibbs##2277
  accept Return to Milton##542 |goto Hillsbrad Foothills 50.57,57.09
step
  talk Lieutenant Farren Orinelle##2228
  accept Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.39
step
  note Collect 10 Murloc Heads from the murlocs on the Western Strand for Lieutenant Farren Orinelle in Southshore.
  collect 10 Murloc Head##3716 |q 559 |goto Hillsbrad Foothills 25.6,72.38 |tip {dropsfrom}Torn Fin Muckdweller, Torn Fin Coastrunner, Torn Fin Oracle
step
  note Slay 10 Crushridge Warmongers, then return to Marshal Redpath in Southshore.
  kill Crushridge Warmonger##2287 |q 504 |goto Alterac Mountains 36.3,53.86
step
  talk Magistrate Henry Maleb##2276
  turnin Further Mysteries##525 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Milton Sheaf##1440
  turnin Return to Milton##542 |goto Stormwind City 74.18,7.46 |tip {turninat}Stormwind City
step
  talk Lieutenant Farren Orinelle##2228
  turnin Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.39
step
  talk Marshal Redpath##2263
  turnin Crushridge Warmongers##504 |goto Hillsbrad Foothills 49.47,58.73
step
  talk Magistrate Henry Maleb##2276
  accept Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
step
  talk Lieutenant Farren Orinelle##2228
  accept Farren's Proof##560 |goto Hillsbrad Foothills 51.46,58.39
step
  note Kill 4 Argus Shadow Mages.
  kill Argus Shadow Mage##2318 |q 537 |goto Alterac Mountains 58.7,40.58
step
  talk Magistrate Henry Maleb##2276
  turnin Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
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
