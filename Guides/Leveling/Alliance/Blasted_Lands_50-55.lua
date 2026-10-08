-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blasted Lands (50-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Burning Steppes (52-59)",
}, [[
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
  note {fp}Alexandra Constantine
  goto Blasted Lands 65.54,24.34 |tip {vendor}
step
  note Bring ten Basilisk Brains and two Vulture Gizzards to Bloodmage Lynnore.
  collect Basilisk Brain##8394 |q 2601 |goto Blasted Lands 60.94,27.83 |tip {dropsfrom}Redstone Basilisk, Redstone Crystalhide, Deatheye
step
  note Bring three Blasted Boar Lungs, two Scorpok Pincers, and one Basilisk Brain to Bloodmage Drazial.
  collect Blasted Boar Lung##8392 |q 2583 |goto Blasted Lands 58.22,30.36 |tip {dropsfrom}Ashmane Boar, Helboar, Grunter
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
  talk Enohar Thunderbrew##9540
  accept Ragnar Thunderbrew##4128 |goto Blasted Lands 63.63,20.63
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
  talk Ambassador Ardalan##7826
  accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
  talk Ragnar Thunderbrew##1267
  turnin Ragnar Thunderbrew##4128 |goto Dun Morogh 46.83,52.36 |tip {turninat}Dun Morogh
step
  talk Fallen Hero of the Horde##7572
  turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  only completed(2439)
  talk High Explorer Magellas##5387
  accept Portents of Uldum##2963 |goto Ironforge 69.93,18.55
step
  only completed(2977)
  talk Historian Karnik##2916
  accept A Future Task##2964 |goto Ironforge 77.54,11.82
step
  only not completed(3763) not completed(3790) not haveq(3763) not haveq(3790)
  talk Innkeeper Allison##6740
  accept Assisting Arch Druid Staghelm##3789 |goto Stormwind City 60.39,75.27
step
  talk Historian Karnik##2916
  accept Passing the Burden##3448 |goto Ironforge 77.54,11.82
step
  talk Tymor##8507
  accept An Easy Pickup##3450 |goto Ironforge 30.96,4.83
step
  only Rogue
  talk Osborne the Night Man##918
  accept A Simple Request##8233 |goto Stormwind City 77.43,65.31
step
  only completed(2439)
  talk Historian Karnik##2916
  turnin Portents of Uldum##2963 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  only completed(2977)
  talk High Explorer Magellas##5387
  turnin A Future Task##2964 |goto Ironforge 69.93,18.55 |tip {turninat}Ironforge
step
  only not completed(3763) not completed(3790) not haveq(3763) not haveq(3790)
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3789 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Tymor##8507
  turnin Passing the Burden##3448 |goto Ironforge 30.96,4.83 |tip {turninat}Ironforge
step
  talk Xiggs Fuselighter##8517
  turnin An Easy Pickup##3450 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88 |tip {turninat}Alterac Mountains
step
  talk Xiggs Fuselighter##8517
  accept Signal for Pickup##3451 |goto Ironforge 70.87,94.56
step
  talk Xiggs Fuselighter##8517
  turnin Signal for Pickup##3451 |goto Ironforge 70.87,94.56 |tip {turninat}Ironforge
step
  note {travel}Ironforge
  goto Ironforge 38.37,55.31
]])
