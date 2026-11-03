-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Moonglade (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Winterspring (54-59)",
	rev = "937ea2bb",
}, [[
step
  ding 54
step
  only completed(1000,1004,1018) level>=54
  talk Arch Druid Hamuul Runetotem##5769
  accept Rabine Saturna##1123 |goto Thunder Bluff 78.62,28.56
step
  note {fp}Bunthen Plainswind
  goto Moonglade 44.28,45.87 |tip {vendor}
step
  only completed(1000,1004,1018) haveq(1123)
  note Speak with Rabine Saturna in the village of Nighthaven, Moonglade. Moonglade lies between Felwood and Winterspring, accessible through a path out of Timbermaw Hold.
  talk Rabine Saturna##11801
  turnin Rabine Saturna##1123 |goto Moonglade 51.69,45.1
step
  only Druid
  talk Loganaar##12042
  accept Torwa Pathfinder##9063 |goto Moonglade 52.53,40.57
step
  only completed(1000,1004,1018) completed(1123) level>=54
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  only level>=56
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  only Druid
  note Speak with Torwa Pathfinder in Un'Goro Crater.
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
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
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
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
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  only completed(8913,8914,8915,8916,8917,8918,8919,8920) level>=58
  talk Mokvar##16012
  accept A Supernatural Device##8923 |goto Orgrimmar 34.95,38.29
step
  note {travel}Winterspring
  goto Winterspring 61.12,38.43
]])
