-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Moonglade (20-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Western Plaguelands (55-60)",
}, [[
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  accept The Principal Source##6122 |goto Moonglade 56.21,30.64
step
  only Druid
  note Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls.
  collect Filled Cliffspring Falls Sampler##15845 |q 6122 |goto Darkshore 54.92,33.31 |tip {dropsfrom}Cliffspring Falls Cave Mouth
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Power over Poison##6125 |goto Moonglade 56.21,30.64
step
  only Skyborne
  talk Dendrite Starblaze##11802
  accept The Great Windborne Cat Spirit##98341 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept The Great Cat Spirit##98394 |goto Moonglade 56.21,30.64
step
  only Druid
  talk Dendrite Starblaze##11802
  accept To Darnassus##98397 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Power over Poison##6125 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  only Druid
  talk Mathrengyl Bearwalker##4217
  turnin To Darnassus##98397 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  only NightElf Druid
  note Seek out the Great Bear Spirit in northwestern Moonglade and learn what it has to share with you about the nature of the bear. When finished, return to Dendrite Starblaze in Nighthaven, Moonglade.
  kill Great Bear Spirit##11956 |q 5929 |goto Moonglade 39.11,27.5
step
  only Druid
  talk Alanndarian Nightsong##3702
  turnin The Principal Source##6122 |goto Darkshore 37.69,40.66 |tip {turninat}Darkshore
step
  talk Keeper Remulos##11832
  accept The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  note Travel to the four Emerald Dream portals in Azeroth and collect a Fragment of the Nightmare's Corruption from each. Return to Keeper Remulos in the Moonglade when you have completed this task.
  kill Emeraldon Boughguard##12474 |goto Ashenvale 94.94,39 |elite
  collect Fragment of the Nightmare's Corruption##21147 |q 8735 |goto Ashenvale 94.94,39
step
  only NightElf Druid
  note Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble.
  collect Shrine Of Remulos##15885 |q 29 |goto Moonglade 36,41.42
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
  only Druid
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
step
  only NightElf Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98394 |goto Moonglade 58.39,73.52
step
  only NightElf Druid
  talk Great Cat Spirit##11957
  accept The Great Cat Spirit##98396 |goto Moonglade 58.39,73.52
step
  only NightElf Druid
  note Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den, and return them to the Great Cat Spirit.
  collect Relic of the Fang##280502 |q 98396 |goto Moonglade 58.39,73.52
step
  only NightElf Druid
  talk Great Cat Spirit##11957
  accept Blessings of the Great Cat Spirit##98731 |goto Moonglade 58.39,73.52
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
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Cat Spirit##98731 |goto Moonglade 56.21,30.64
step
  only Skyborne
  talk Dendrite Starblaze##11802
  turnin Blessings of the Great Windborne Cat Spirit##98738 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Back to Darnassus##5931 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Back to Darnassus##5931 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  only NightElf Druid
  talk Tajarri##11799
  turnin Trial of the Lake##29 |goto Moonglade 36.52,40.1
step
  talk Keeper Remulos##11832
  turnin The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  only NightElf Druid
  talk Tajarri##11799
  accept Trial of the Sea Lion##272 |goto Moonglade 36.52,40.1
step
  only NightElf Druid
  note Find the Half Pendant of Aquatic Agility and the Half Pendant of Aquatic Endurance. Speak with the residents of Moonglade to learn clues as to where these items may be located.
  collect Pendant of the Sea Lion##15885 |q 272 |goto Moonglade 36,41.42 |tip {dropsfrom}Shrine Of Remulos
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
  only NightElf Druid
  talk Great Cat Spirit##11957
  turnin The Great Cat Spirit##98396 |goto Moonglade 58.39,73.52
step
  only Skyborne
  talk Avatar of Saeyleenan##272054
  turnin The Great Windborne Cat Spirit##98404 |goto Moonglade 44,73.6
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
step
  only NightElf Druid
  talk Dendrite Starblaze##11802
  accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
step
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  only NightElf Druid
  talk Mathrengyl Bearwalker##4217
  turnin Aquatic Form##5061 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
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
  note {travel}Western Plaguelands
  goto Western Plaguelands 38.4,54.05
]])
