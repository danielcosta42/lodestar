-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blasted Lands (47-57)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Searing Gorge (48-50)",
}, [[
step
  note {fp}Alexandra Constantine
  goto Blasted Lands 65.54,24.34 |tip {vendor}
step
  talk Ambassador Ardalan##7826
  accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
  talk Thadius Grimshade##8022
  accept Nekrum's Medallion##2991 |goto Blasted Lands 66.9,19.47
step
  note Bring Nekrum's Medallion to Thadius Grimshade in the Blasted Lands.
  collect Nekrum's Medallion##9471 |q 2991 |goto Blasted Lands 66.9,19.47 |tip {dropsfrom}Nekrum Gutchewer
step
  talk Enohar Thunderbrew##9540
  accept Ragnar Thunderbrew##4128 |goto Blasted Lands 63.63,20.63
step
  talk Bloodmage Drazial##7505
  accept Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.2
step
  note Bring three Snickerfang Jowls, two Blasted Boar Lungs, and one Scorpok Pincer to Bloodmage Drazial.
  collect Snickerfang Jowl##8391 |q 2581 |goto Blasted Lands 47.77,21.37 |tip {dropsfrom}Starving Snickerfang, Snickerfang Hyena, Ravage
step
  talk Bloodmage Drazial##7505
  accept A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.2
step
  note Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
  collect Blasted Boar Lung##8392 |q 2583 |goto Blasted Lands 59.34,28.99 |tip {dropsfrom}Ashmane Boar, Helboar, Grunter
step
  talk Bloodmage Drazial##7505
  accept The Decisive Striker##2585 |goto Blasted Lands 50.55,14.2
step
  note Bring three Scorpok Pincers, two Vulture Gizzards, and one Blasted Boar Lung to Bloodmage Drazial.
  collect Scorpok Pincer##8393 |q 2585 |goto Blasted Lands 49.76,21.96 |tip {dropsfrom}Scorpok Stinger, Clack the Reaver
step
  talk Bloodmage Lynnore##7506
  accept The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.3
step
  note Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
  collect Basilisk Brain##8394 |q 2601 |goto Blasted Lands 60.94,29.05 |tip {dropsfrom}Redstone Basilisk, Redstone Crystalhide, Deatheye
step
  talk Bloodmage Lynnore##7506
  accept Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.3
step
  note Bring ten Vulture Gizzards and two Snickerfang Jowls to Bloodmage Lynnore.
  collect Vulture Gizzard##8396 |q 2603 |goto Blasted Lands 58.63,36.46 |tip {dropsfrom}Black Slayer, Bonepicker, Spiteflayer
step
  talk Kum'isha the Collector##7363
  accept To Serve Kum'isha##2521 |goto Blasted Lands 51.98,35.65
step
  note In your journeys throughout the Blasted Lands, should you ever come across a Flawless Draenethyst Sphere, take the item back to Kum'isha the Collector.
  collect Flawless Draenethyst Sphere##8244 |q 2521 |goto Blasted Lands 42.21,14.64 |tip {dropsfrom}Dreadmaul Ogre, Dreadmaul Ogre Mage, Dreadmaul Brute
step
  talk Kum'isha the Collector##7363
  accept Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.98,35.65
step
  note Bring Kum'isha Imperfect Draenethyst Fragments and be rewarded for each one you turn in.
  collect Imperfect Draenethyst Fragment##10593 |q 3501 |goto Blasted Lands 42.21,14.64 |tip {dropsfrom}Dreadmaul Ogre, Dreadmaul Ogre Mage, Dreadmaul Brute
step
  talk Ragnar Thunderbrew##1267
  turnin Ragnar Thunderbrew##4128 |goto Dun Morogh 46.83,52.36 |tip {turninat}Dun Morogh
step
  talk Fallen Hero of the Horde##7572
  turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Elder Bellowrage##15563
  accept Bellowrage the Elder##8647 |goto Blasted Lands 57.92,54.93
step
  talk Watch Commander Relthorn Netherwane##16841
  accept Through the Dark Portal##10119 |goto Blasted Lands 58.32,55.9
step
  talk Agent Proudwell##19942
  accept Into the Breach##10259 |goto Blasted Lands 58.24,55.07
step
  note Kill 6 Invading Felguards and then return to Argent Emissary Proudwell.
  kill Invading Felguard##19284 |q 10259
step
  talk Thadius Grimshade##8022
  turnin Nekrum's Medallion##2991 |goto Blasted Lands 66.9,19.47
step
  talk Thadius Grimshade##8022
  accept The Divination##2992 |goto Blasted Lands 66.9,19.47
step
  talk Bloodmage Lynnore##7506
  turnin The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.3
step
  talk Bloodmage Lynnore##7506
  turnin Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.3
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
  talk Kum'isha the Collector##7363
  turnin To Serve Kum'isha##2521 |goto Blasted Lands 51.98,35.65
step
  talk Kum'isha the Collector##7363
  turnin Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.98,35.65
step
  talk Elder Bellowrage##15563
  turnin Bellowrage the Elder##8647 |goto Blasted Lands 57.92,54.93
step
  talk Commander Duron##19229
  turnin Through the Dark Portal##10119 |goto Hellfire Peninsula 87.34,50.75 |tip {turninat}Hellfire Peninsula
step
  talk Agent Proudwell##19942
  turnin Into the Breach##10259 |goto Blasted Lands 58.24,55.07
step
  talk Thadius Grimshade##8022
  turnin The Divination##2992 |goto Blasted Lands 66.9,19.47
step
  talk Thadius Grimshade##8022
  accept Return to the Hinterlands##2993 |goto Blasted Lands 66.9,19.47
step
  talk Gryphon Master Talonaxe##5636
  turnin Return to the Hinterlands##2993 |goto The Hinterlands 9.75,44.47 |tip {turninat}The Hinterlands
step
  note {travel}Searing Gorge
  goto Searing Gorge 41.14,25.56
]])
