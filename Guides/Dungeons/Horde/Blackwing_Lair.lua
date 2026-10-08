-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Blackwing Lair", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  kill Nefarian##11583 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Lord of Blackrock##7783 |goto Blackwing Lair - Dungeon -1,-1
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Arygos##15380
  accept Imperial Qiraji Armaments##8789 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Merithra of the Dream##15378
  accept Imperial Qiraji Regalia##8790 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  note Venture to the Caverns of Time in Tanaris and find Anachronos, Brood of Nozdormu.
  talk Anachronos##15192 |q 8286 |goto Tanaris 65.27,50.03
step
  note Arygos in the Temple of Ahn'Qiraj will create Elementium Infused Armaments for you should you bring him Imperial Qiraji Armaments and 3 Elementium Ore.
  collect Imperial Qiraji Armaments##21232 |q 8789 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'nilash, Emperor Vek'lor, Viscidus
step
  note Merithra of the Dream in the Temple of Ahn'Qiraj will create Elementium Infused Armaments for you should you bring her Imperial Qiraji Regalia and 3 Elementium Ore.
  collect Imperial Qiraji Regalia##21237 |q 8790 |goto Temple of Ahn'Qiraj - Dungeon -1,-1 |raid |tip {dropsfrom}Emperor Vek'nilash, Emperor Vek'lor, Viscidus
step
  talk Thrall##4949
  turnin The Lord of Blackrock##7783 |goto Orgrimmar 31.73,37.82
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Arygos##15380
  turnin Imperial Qiraji Armaments##8789 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Merithra of the Dream##15378
  turnin Imperial Qiraji Regalia##8790 |goto Temple of Ahn'Qiraj - Dungeon -1,-1
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  kill Hive'Ashi Stinger##11698 |goto Silithus 50.21,40.97 |elite
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 50.21,40.97
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept Long Forgotten Memories##8305 |goto Tanaris 65.27,50.03
step
  turnin Long Forgotten Memories##8305 |goto Silithus 28.68,89.14
step
  click Crystalline Tear##180633
  accept A Pawn on the Eternal Board##8519 |goto Silithus 28.68,89.14
step
  talk Anachronos##15192
  turnin A Pawn on the Eternal Board##8519 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 65.27,50.03
step
  talk Vaelastrasz the Corrupt##13020
  accept Nefarius's Corruption##8730 |goto Blackwing Lair - Dungeon -1,-1
step
  note Slay Nefarian and recover the Red Scepter Shard. Return the Red Scepter Shard to Anachronos at the Caverns of Time in Tanaris. You have 5 hours to complete this task.
  collect Red Scepter Shard##21138 |q 8730 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Nefarian
step
  talk Anachronos##15192
  turnin Nefarius's Corruption##8730 |goto Tanaris 65.27,50.03
]])
