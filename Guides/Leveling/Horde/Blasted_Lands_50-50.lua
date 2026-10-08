-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Blasted Lands (50-50)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Badlands (50-54)",
	rev = "77f8a77c",
}, [[
step
  only not completed(3762) not completed(936) not haveq(3762) not haveq(936)
  talk Innkeeper Norman##6741
  accept Assisting Arch Druid Runetotem##3784 |goto Undercity 67.74,37.89
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
  note Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.
  collect Snickerfang Jowl##8391 |q 2581 |goto Blasted Lands 46.67,20.94 |tip {dropsfrom}Starving Snickerfang, Snickerfang Hyena, Ravage
step
  note Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.
  collect Scorpok Pincer##8393 |q 2585 |goto Blasted Lands 47.8,22.4 |tip {dropsfrom}Scorpok Stinger, Clack the Reaver
step
  talk Bloodmage Drazial##7505
  turnin Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Drazial##7505
  turnin The Decisive Striker##2585 |goto Blasted Lands 50.55,14.2
step
  note Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
  collect Blasted Boar Lung##8392 |q 2583 |goto Blasted Lands 58.22,30.36 |tip {dropsfrom}Ashmane Boar, Helboar, Grunter
step
  note Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
  collect Basilisk Brain##8394 |q 2601 |goto Blasted Lands 60.94,27.83 |tip {dropsfrom}Redstone Basilisk, Redstone Crystalhide, Deatheye
step
  note Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.
  collect Vulture Gizzard##8396 |q 2603 |goto Blasted Lands 57.6,28.4 |tip {dropsfrom}Black Slayer, Bonepicker
step
  talk Bloodmage Drazial##7505
  turnin A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.2
step
  talk Bloodmage Lynnore##7506
  turnin The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.3
step
  talk Bloodmage Lynnore##7506
  turnin Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.3
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
  only not completed(3762) not completed(936) not haveq(3762) not haveq(936)
  talk Arch Druid Hamuul Runetotem##5769
  turnin Assisting Arch Druid Runetotem##3784 |goto Thunder Bluff 78.62,28.56 |tip {turninat}Thunder Bluff
step
  note {travel}Undercity
  goto Undercity 47.45,73.35
]])
