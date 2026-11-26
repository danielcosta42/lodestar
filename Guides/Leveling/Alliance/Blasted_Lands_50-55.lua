-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blasted Lands (50-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Azshara (51-58)",
	rev = "5d86de27",
}, [[
step
  ding 49
step
  talk Bloodmage Drazial##7505
  accept Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Drazial##7505
  accept A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Drazial##7505
  accept The Decisive Striker##2585 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Lynnore##7506
  accept The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.3
step
  talk Bloodmage Lynnore##7506
  accept Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.3
step
  note {fp}Alexandra Constantine
  goto Blasted Lands 65.54,24.34 |tip {vendor}
step
  note Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
  collect Scorpok Pincer##8393 |q 2583/2 |goto Blasted Lands 47.8,22.4 |tip {dropsfrom}Scorpok Stinger, Clack the Reaver
  collect Blasted Boar Lung##8392 |q 2583/1 |goto Blasted Lands 58.22,30.36 |tip {dropsfrom}Ashmane Boar, Helboar, Grunter
  collect Basilisk Brain##8394 |q 2583 |goto Blasted Lands 60.94,27.83 |tip {dropsfrom}Redstone Basilisk, Redstone Crystalhide, Deatheye
step
  note Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
  collect Basilisk Brain##8394 |q 2601/1 |goto Blasted Lands 60.94,27.83 |tip {dropsfrom}Redstone Basilisk, Redstone Crystalhide, Deatheye
  collect Vulture Gizzard##8396 |q 2601 |goto Blasted Lands 57.6,28.4 |tip {dropsfrom}Black Slayer, Bonepicker
step
  note Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.
  collect Vulture Gizzard##8396 |q 2603/1 |goto Blasted Lands 57.6,28.4 |tip {dropsfrom}Black Slayer, Bonepicker
  collect Snickerfang Jowl##8391 |q 2603 |goto Blasted Lands 46.67,20.94 |tip {dropsfrom}Starving Snickerfang, Snickerfang Hyena, Ravage
step
  note Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.
  collect Snickerfang Jowl##8391 |q 2581/1 |goto Blasted Lands 46.67,20.94 |tip {dropsfrom}Starving Snickerfang, Snickerfang Hyena, Ravage
  collect Scorpok Pincer##8393 |q 2581/3 |goto Blasted Lands 47.8,22.4 |tip {dropsfrom}Scorpok Stinger, Clack the Reaver
  collect Blasted Boar Lung##8392 |q 2581 |goto Blasted Lands 58.22,30.36 |tip {dropsfrom}Ashmane Boar, Helboar, Grunter
step
  note Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.
  collect Blasted Boar Lung##8392 |q 2585/3 |goto Blasted Lands 58.22,30.36 |tip {dropsfrom}Ashmane Boar, Helboar, Grunter
  collect Vulture Gizzard##8396 |q 2585/2 |goto Blasted Lands 57.6,28.4 |tip {dropsfrom}Black Slayer, Bonepicker
  collect Scorpok Pincer##8393 |q 2585 |goto Blasted Lands 47.8,22.4 |tip {dropsfrom}Scorpok Stinger, Clack the Reaver
step
  talk Bloodmage Drazial##7505
  turnin Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Drazial##7505
  turnin A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Drazial##7505
  turnin The Decisive Striker##2585 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Lynnore##7506
  turnin The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.3
step
  talk Bloodmage Lynnore##7506
  turnin Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.3
step
  talk Bernie Heisten##3546
  accept Deflective Surface##87295 |goto Blasted Lands 63.51,17.01
step
  note Bring 10 Redstone Basilisk Scales to Bernie Heisten.
  collect 10 Redstone Basilisk Scale##280181 |q 87295 |goto Blasted Lands 60.94,27.83 |tip {dropsfrom}Redstone Basilisk, Redstone Crystalhide
step
  talk Bernie Heisten##3546
  turnin Deflective Surface##87295 |goto Blasted Lands 63.51,17.01
step
  only completed(96797)
  talk Lieutenant Connar##266524
  accept Into the Darkness##96798 |goto Blasted Lands 66.07,19.4
step
  only completed(96797)
  note Find Sergeant Danneth somewhere in the Serpent's Coil caverns southeast of Nethergarde Keep.
  talk Sergeant Danneth##266508
  turnin Into the Darkness##96798 |goto Blasted Lands 66.73,31.67
step
  only completed(96797)
  talk Sergeant Danneth##266508
  accept Escaping the Shadows##96811 |goto Blasted Lands 66.73,31.67
step
  only completed(96797)
  note Escort Sergeant Danneth out of the Serpent's Coil caves and back to Nethergarde Keep.
  talk Lieutenant Connar##266524
  turnin Escaping the Shadows##96811 |goto Blasted Lands 66.07,19.4
step
  only completed(96797)
  talk Lieutenant Connar##266524
  accept A Heavy Responsibility##96799 |goto Blasted Lands 66.07,19.4
step
  only level>=50
  talk Enohar Thunderbrew##9540
  accept Ragnar Thunderbrew##4128 |goto Blasted Lands 63.63,20.63
step
  only completed(96797)
  note Speak with Sergeant Danneth at Nethergarde Keep.
  talk Sergeant Danneth##266593
  turnin A Heavy Responsibility##96799 |goto Blasted Lands 65.23,15.33
step
  only completed(96797)
  talk Sergeant Danneth##266593
  accept Thicker Than Water##96812 |goto Blasted Lands 65.23,15.33
step
  talk Kum'isha the Collector##7363
  accept To Serve Kum'isha##2521 |goto Blasted Lands 51.98,35.65
step
  talk Kum'isha the Collector##7363
  accept Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.98,35.65
step
  note In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector.
  collect Flawless Draenethyst Sphere##8244 |q 2521 |goto Blasted Lands 41.7,14.64 |tip {dropsfrom}Dreadmaul Ogre, Dreadmaul Ogre Mage, Dreadmaul Brute
step
  note Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.
  collect Imperfect Draenethyst Fragment##10593 |q 3501 |goto Blasted Lands 41.7,14.64 |tip {dropsfrom}Dreadmaul Ogre, Dreadmaul Ogre Mage, Dreadmaul Brute
step
  talk Kum'isha the Collector##7363
  turnin To Serve Kum'isha##2521 |goto Blasted Lands 51.98,35.65
step
  talk Kum'isha the Collector##7363
  turnin Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.98,35.65
step
  only level>=50
  talk Ambassador Ardalan##7826
  accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
  only level>=50
  talk Royal Historian Archesonus##8879
  accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
  only haveq(3702)
  note Listen to Royal Historian Archesonus recant the history of Thaurissan.
  talk Royal Historian Archesonus##8879 |q 3702 |goto Ironforge 38.37,55.31
step
  only haveq(3702)
  talk Royal Historian Archesonus##8879
  turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31 |tip {turninat}Ironforge
step
  only completed(4184)
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4185 |goto Stormwind City 80.21,38.35
step
  only completed(4184)
  note Speak with Highlord Bolvar Fordragon after speaking with Lady Katrana Prestor.
  talk Lady Katrana Prestor##1749 |q 4185 |goto Stormwind City 80.1,38.17
step
  only completed(4184)
  talk Highlord Bolvar Fordragon##1748
  turnin The True Masters##4185 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only completed(4184)
  talk Highlord Bolvar Fordragon##1748
  accept The True Masters##4186 |goto Stormwind City 80.21,38.35
step
  only haveq(4128)
  note Speak with Ragnar Thunderbrew.
  talk Ragnar Thunderbrew##1267
  turnin Ragnar Thunderbrew##4128 |goto Dun Morogh 46.83,52.36 |tip {turninat}Dun Morogh
step
  only completed(96797)
  note Return to Orphan Matron Aria in Dalaran and inform her of Sergeant Danneth's intentions to take in Randal.
  talk Orphan Matron Aria##34365
  turnin Thicker Than Water##96812 |goto Alterac Mountains 21.62,73.18 |tip {turninat}Alterac Mountains
step
  note {travel}Azshara
  goto Azshara 11.37,78.17
]])
