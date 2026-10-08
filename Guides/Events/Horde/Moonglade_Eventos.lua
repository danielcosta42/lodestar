-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Moonglade (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept Moonglade##5922 |goto Thunder Bluff 76.48,27.22
step
  only Tauren Druid
  talk Turak Runetotem##3033
  accept A Lesson to Learn##27 |goto Thunder Bluff 76.48,27.22
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  kill Ysondre##14887 |goto Duskwood 46.5,39.6 |raid |tip Loot the quest item here — it starts the quest.
  accept Shrouded in Nightmare##8446 |goto Duskwood 46.5,39.6
step
  talk Valadar Starsong##15864
  accept Elune's Blessing##8868 |goto Moonglade 53.65,35.26
step
  note Venture to the Caverns of Time in Tanaris and find Anachronos, Brood of Nozdormu.
  kill Anachronos##15192 |q 8286 |goto Tanaris 65.27,50.03 |raid
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5922 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##27 |goto Moonglade 56.21,30.64
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Keeper Remulos##11832
  turnin Shrouded in Nightmare##8446 |goto Moonglade 36.18,41.79
step
  talk Valadar Starsong##15864
  turnin Elune's Blessing##8868 |goto Moonglade 53.65,35.26
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##28 |goto Moonglade 56.21,30.64
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Keeper Remulos##11832
  accept Waking Legends##8447 |goto Moonglade 36.18,41.79
step
  only Tauren Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  kill Great Bear Spirit##11956 |q 5930 |goto Moonglade 39.11,27.5
step
  only Tauren Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 28 |goto Moonglade 36,41.42
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Dungeon -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Tajarri##11799
  turnin Trial of the Lake##28 |goto Moonglade 36.52,40.1
step
  talk Baristolth of the Shifting Sands##15180
  turnin Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Keeper Remulos##11832
  turnin Waking Legends##8447 |goto Moonglade 36.18,41.79
step
  talk Baristolth of the Shifting Sands##15180
  accept The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  note Collect 200 Silithid Carapace Fragments and return to Baristolth.
  kill Hive'Ashi Stinger##11698 |goto Silithus 48.5,41.14 |elite
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 48.5,41.14
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
  talk Malfurion Stormrage##15362
  accept Eranikus, Tyrant of the Dream##8733 |goto The Temple of Atal'Hakkar - Dungeon -1,-1
step
  talk Forest Wisp##15624
  turnin Eranikus, Tyrant of the Dream##8733 |goto Teldrassil 37.55,47.92
step
  talk Forest Wisp##15624
  accept Tyrande and Remulos##8734 |goto Teldrassil 37.55,47.92
step
  talk Keeper Remulos##11832
  turnin Tyrande and Remulos##8734 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  note Travel to the four Emerald Dream portals in Azeroth and collect a Fragment of the Nightmare's Corruption from each. Return to Keeper Remulos in the Moonglade when you have completed this task.
  kill Emeraldon Boughguard##12474 |goto Ashenvale 94.94,39 |elite
  collect Fragment of the Nightmare's Corruption##21147 |q 8735 |goto Ashenvale 94.94,39
step
  talk Keeper Remulos##11832
  turnin The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  turnin The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
]])
