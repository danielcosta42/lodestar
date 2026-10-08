-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Moonglade (20-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Azshara (52-60)",
}, [[
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##28 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6127 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  note Use the Empty Dreadmist Peak Sampler to draw a sample of water from a pool at the top of the peak.
  collect Filled Dreadmist Peak Sampler##15843 |q 6127 |goto The Barrens 48.4,18.89 |tip {dropsfrom}Dreadmist Peak Pool
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6130 |goto Moonglade 56.21,30.64
step
  only Skyborne
  talk Dendrite Starblaze##11802
  accept The Great Windborne Cat Spirit##98341 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  accept To Thunder Bluff##98362 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept The Great Cat Spirit##98405 |goto Moonglade 56.21,30.64
step
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  only Tauren Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  kill Great Bear Spirit##11956 |q 5930 |goto Moonglade 39.11,27.5
step
  talk Keeper Remulos##11832
  accept The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  note Travel to the four Emerald Dream portals in Azeroth and collect a Fragment of the Nightmare's Corruption from each. Return to Keeper Remulos in the Moonglade when you have completed this task.
  kill Emeraldon Boughguard##12474 |goto Ashenvale 94.94,39 |elite
  collect Fragment of the Nightmare's Corruption##21147 |q 8735 |goto Ashenvale 94.94,39
step
  only Tauren Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 28 |goto Moonglade 36,41.42
step
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  collect Reliquary of Purity##22201 |q 5527 |goto Silithus 63.23,55.35 |tip {dropsfrom}Dusty Reliquary
step
  only Druid
  talk Loganaar##12042
  accept Torwa Pathfinder##9063 |goto Moonglade 52.53,40.57
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98405 |goto Moonglade 58.39,73.52
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
  collect Relic of the Fang##280502 |q 98342 |goto Moonglade 58.39,73.52
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  accept Blessings of the Great Cat Spirit##98739 |goto Moonglade 58.39,73.52
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  turnin The Great Windborne Cat Spirit##98341 |goto Moonglade 44,73.6
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  accept The Great Windborne Cat Spirit##98404 |goto Moonglade 44,73.6
step
  only Skyborne
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Avatar of Saeyleenan.
  collect Relic of the Fang##280502 |q 98404 |goto Moonglade 44,73.6
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  accept Blessings of the Great Windborne Cat Spirit##98738 |goto Moonglade 44,73.6
step
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93 |tip {turninat}Silithus
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Tonga Runetotem##3448
  turnin The Principal Source##6127 |goto The Barrens 52.26,31.93 |tip {turninat}The Barrens
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Power over Poison##6130 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Cat Spirit##98739 |goto Moonglade 56.21,30.64
step
  only Skyborne
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Windborne Cat Spirit##98738 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Turak Runetotem##3033
  turnin To Thunder Bluff##98362 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Back to Thunder Bluff##5932 |goto Moonglade 56.21,30.64
step
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  only Tauren Druid
  talk Tajarri##11799
  turnin Trial of the Lake##28 |goto Moonglade 36.52,40.1
step
  talk Keeper Remulos##11832
  turnin The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  only Tauren Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##30 |goto Moonglade 36.52,40.1
step
  only Tauren Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 30 |goto Moonglade 36,41.42 |tip {dropsfrom}Shrine Of Remulos
step
  talk Keeper Remulos##11832
  accept The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Rabine Saturna##11801
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  accept Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  collect Sealed Reliquary of Purity##18540 |q 5526 |goto Moonglade 51.69,45.1
step
  only Tauren Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98342 |goto Moonglade 58.39,73.52
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  turnin The Great Windborne Cat Spirit##98404 |goto Moonglade 44,73.6
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Back to Thunder Bluff##5932 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##30 |goto Moonglade 56.21,30.64
step
  only Tauren Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##31 |goto Moonglade 56.21,30.64
step
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Keeper Remulos##11832
  turnin The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Champion Returns##8741 |goto Moonglade 36.18,41.79
step
  talk Anachronos##15192
  turnin The Champion Returns##8741 |goto Tanaris 65.27,50.03 |tip {turninat}Tanaris
step
  talk Rabine Saturna##11801
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Aquatic Form##31 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  note {travel}Azshara
  goto Azshara 11.37,78.17
]])
