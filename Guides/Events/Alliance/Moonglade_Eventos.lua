-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Moonglade (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept A Lesson to Learn##26 |goto Darnassus 35.37,8.4
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  accept Moonglade##5921 |goto Darnassus 35.37,8.4
step
  talk Valadar Starsong##15864
  accept Elune's Blessing##8868 |goto Moonglade 53.65,35.26
step
  talk Baristolth of the Shifting Sands##15180
  accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Moonglade##5921 |goto Moonglade 56.21,30.64
step
  talk Valadar Starsong##15864
  turnin Elune's Blessing##8868 |goto Moonglade 53.65,35.26
step
  talk Baristolth of the Shifting Sands##15180
  turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
  talk Keeper Remulos##11832
  turnin Shrouded in Nightmare##8446 |goto Moonglade 36.18,41.79
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  talk Baristolth of the Shifting Sands##15180
  accept Only One May Rise##8288 |goto Silithus 49.45,36.45
step
  talk Keeper Remulos##11832
  accept Waking Legends##8447 |goto Moonglade 36.18,41.79
step
  note Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus.
  collect Head of the Broodlord Lashlayer##20383 |q 8288 |goto Blackwing Lair - Raid -1,-1 |raid |tip {dropsfrom}Broodlord Lashlayer
step
  only NightElf Druid
  talk Tajarri##11799
  turnin Trial of the Lake##29 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
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
  collect 200 Silithid Carapace Fragment##20384 |q 8301 |goto Silithus 48.5,41.14 |tip {dropsfrom}Hive'Ashi Stinger, Hive'Ashi Worker, Hive'Ashi Defender
step
  talk Baristolth of the Shifting Sands##15180
  turnin The Path of the Righteous##8301 |goto Silithus 49.45,36.45
step
  talk Baristolth of the Shifting Sands##15180
  accept Anachronos##8303 |goto Silithus 49.45,36.45
step
  talk Anachronos##15192
  turnin Anachronos##8303 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept Long Forgotten Memories##8305 |goto Tanaris 64.2,51.42
step
  turnin Long Forgotten Memories##8305 |goto Silithus 28.68,89.14
step
  click Crystalline Tear##180633
  accept A Pawn on the Eternal Board##8519 |goto Silithus 28.68,89.14
step
  talk Anachronos##15192
  turnin A Pawn on the Eternal Board##8519 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  accept The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Anachronos##15192
  turnin The Charge of the Dragonflights##8555 |goto Tanaris 64.2,51.42
step
  talk Malfurion Stormrage##15362
  accept Eranikus, Tyrant of the Dream##8733
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
  kill Emeraldon Boughguard##12474 |goto Ashenvale 94.94,39.0 |elite
  collect Fragment of the Nightmare's Corruption##21147 |q 8735 |goto Ashenvale 94.94,39.0
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
