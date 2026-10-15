-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Blasted Lands (50-55)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Badlands (50-54)",
	rev = "007bbe20",
}, [[
step
  ding 46
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
  note {travel}Badlands
  goto Badlands 3.36,48.06
]])
