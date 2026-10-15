-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Barrens (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Winterspring (54-59)",
	rev = "bbd56a14",
}, [[
step
  ding 51
step
  only Druid
  talk Turak Runetotem##3033
  accept Torwa Pathfinder##9063 |goto Thunder Bluff 76.48,27.22
step
  only completed(1000,1004,1018) level>=54
  talk Arch Druid Hamuul Runetotem##5769
  accept Rabine Saturna##1123 |goto Thunder Bluff 78.62,28.56
step
  only completed(5158)
  talk Islen Waterseer##5901
  accept Cleansed Water Returns to Felwood##5159 |goto The Barrens 65.83,43.78
step
  talk Liv Rizzlefix##8496
  accept Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
  talk Gishah##256384 |tip Buy Advertising License Application: it starts the quest.
  accept Sign Me Up!##95819 |goto The Barrens 48.71,29.37
step
  note Bring the completed form to Jornah in The Barrens.
  collect Massive Pile of Completed Forms##270897 |q 95819 |goto The Barrens 48.71,29.37
step
  talk Jornah##256388
  turnin Sign Me Up!##95819 |goto The Barrens 49.8,29.06
step
  only Druid
  note Speak with Torwa Pathfinder in Un'Goro Crater.
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
step
  note Collect 9 samples of Un'Goro Ash from the fire elementals around the volcano in Un'Goro Crater, and return them to Liv Rizzlefix in Ratchet.
  collect 9 Un'Goro Ash##11829 |q 4502 |goto Un'Goro Crater 55.1,48.83 |tip {dropsfrom}Scorching Elemental, Living Blaze, Blazing Invader
step
  only completed(5158)
  note Take the Purified Moon Well Water to Greta Mosshoof in Felwood.
  talk Greta Mosshoof##10922
  turnin Cleansed Water Returns to Felwood##5159 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
step
  only completed(5158)
  talk Greta Mosshoof##10922
  accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  only completed(5158)
  note Using the Purified Moon Well Water, douse the flames of the four braziers of protection within Shadow Hold in Felwood, then return to Greta Mosshoof in the Emerald Sanctuary.
  click Brazier of Pain##176158 |q 5165/1 |goto Felwood 36.27,56.3
  click Brazier of Hatred##176161 |q 5165/4 |goto Felwood 36.48,55.19
  click Brazier of Suffering##176160 |q 5165/3 |goto Felwood 36.73,53.27
  click Brazier of Malice##176159 |q 5165 |goto Felwood 37.68,52.69
step
  only completed(5158)
  talk Greta Mosshoof##10922
  turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
step
  only completed(5158)
  talk Greta Mosshoof##10922
  accept A Final Blow##5242 |goto Felwood 51.21,82.11
step
  only completed(5158)
  note Kill Moora and Salia, and bring Shadow Lord Fel'dan's Head to Greta Mosshoof in Felwood.
  kill Moora##9861 |q 5242 |goto Felwood 38.81,46.87
step
  only completed(5158)
  talk Greta Mosshoof##10922
  turnin A Final Blow##5242 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
step
  talk Liv Rizzlefix##8496
  turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
  only completed(1000,1004,1018) haveq(1123)
  note Speak with Rabine Saturna in the village of Nighthaven, Moonglade. Moonglade lies between Felwood and Winterspring, accessible through a path out of Timbermaw Hold.
  talk Rabine Saturna##11801
  turnin Rabine Saturna##1123 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only level>=56
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  only completed(1000,1004,1018) completed(1123) level>=54
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  only completed(1000,1004,1018) haveq(1124)
  note Speak with Layo Starstrike near the Valor's Rest graveyard of Silithus, showing him Rabine's Letter.
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93 |tip {turninat}Silithus
step
  only haveq(5527)
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  collect Reliquary of Purity##22201 |q 5527 |goto Silithus 63.23,55.35 |tip {dropsfrom}Dusty Reliquary
step
  only haveq(5527)
  talk Rabine Saturna##11801
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only completed(5527) level>=56
  talk Rabine Saturna##11801
  accept Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  only haveq(5526)
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  collect Sealed Reliquary of Purity##18540 |q 5526 |goto Moonglade 51.69,45.1
step
  only haveq(5526)
  talk Rabine Saturna##11801
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1 |tip {turninat}Moonglade
step
  only completed(8913,8914,8915,8916,8917,8918,8919,8920) level>=58
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note {travel}Winterspring
  goto Winterspring 61.12,38.43
]])
