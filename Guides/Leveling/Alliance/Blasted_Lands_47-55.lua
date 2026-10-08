-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Blasted Lands (47-55)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Searing Gorge (48-52)",
}, [[
step
  talk Ambassador Ardalan##7826
  accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
  talk High Explorer Magellas##5387
  accept Portents of Uldum##2963 |goto Ironforge 69.93,18.55
step
  talk Historian Karnik##2916
  accept A Future Task##2964 |goto Ironforge 77.54,11.82
step
  talk Thadius Grimshade##8022
  accept Nekrum's Medallion##2991 |goto Blasted Lands 66.9,19.47
step
  note Bring Nekrum's Medallion to Thadius Grimshade in the Blasted Lands.
  collect Nekrum's Medallion##9471 |q 2991 |goto Zul'Farrak - Dungeon -1,-1 |elite |tip {dropsfrom}Nekrum Gutchewer
step
  talk Enohar Thunderbrew##9540
  accept Ragnar Thunderbrew##4128 |goto Blasted Lands 63.63,20.63
step
  talk Brohann Caskbelly##5384
  accept Into The Temple of Atal'Hakkar##1475 |goto Stormwind City 69.45,40.4
step
  note Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind.
  collect 10 Atal'ai Tablet##6288 |q 1475 |goto Swamp of Sorrows 75.68,47.44
step
  talk Spirit of Kirith##7729
  accept The Cover of Darkness##2743 |goto Blasted Lands 68.8,31.07
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
  collect Scorpok Pincer##8393 |q 2585 |goto Blasted Lands 47.8,22.6 |tip {dropsfrom}Scorpok Stinger, Clack the Reaver
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
  collect Vulture Gizzard##8396 |q 2603 |goto Blasted Lands 54.8,28.4 |tip {dropsfrom}Black Slayer, Bonepicker
step
  talk Ragnar Thunderbrew##1267
  turnin Ragnar Thunderbrew##4128 |goto Dun Morogh 46.83,52.36 |tip {turninat}Dun Morogh
step
  talk Fallen Hero of the Horde##7572
  turnin The Cover of Darkness##2743 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Fallen Hero of the Horde##7572
  turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Tannysa##5566
  accept Jonespyre's Request##3787 |goto Stormwind City 54.29,84.1
step
  talk Innkeeper Allison##6740
  accept Assisting Arch Druid Staghelm##3789 |goto Stormwind City 60.39,75.27
step
  talk Innkeeper Firebrew##5111
  accept Assisting Arch Druid Staghelm##3790 |goto Ironforge 18.15,51.45
step
  talk Crier Goodman##2198
  accept A Call to Arms: The Plaguelands!##5066 |goto Stormwind City 56.39,74.09
step
  talk Courier Hammerfall##10877
  accept A Call to Arms: The Plaguelands!##5090 |goto Ironforge 55.92,81.39
step
  only Warlock
  talk Daio the Decrepit##14463
  accept The Prison's Bindings##7581 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  note Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done.
  collect Satyr Blood##18603 |q 7581 |goto Dire Maul - Dungeon -1,-1 |tip {dropsfrom}Wildspawn Satyr, Wildspawn Rogue, Wildspawn Trickster
step
  only Warlock
  talk Daio the Decrepit##14463
  accept The Prison's Casing##7582 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  note Travel to Darkwhisper Gorge in Winterspring and recover 5 Tears of the Hederine from the Hederine demons that occupy the gorge. Return to Daio in the Tainted Scar when you have completed this task.
  kill Hederine Initiate##7461 |goto Winterspring 58.44,83.17 |elite
  collect Tears of the Hederine##18604 |q 7582 |goto Winterspring 58.44,83.17
step
  talk Historian Karnik##2916
  turnin Portents of Uldum##2963 |goto Ironforge 77.54,11.82 |tip {turninat}Ironforge
step
  talk High Explorer Magellas##5387
  turnin A Future Task##2964 |goto Ironforge 69.93,18.55 |tip {turninat}Ironforge
step
  talk Thadius Grimshade##8022
  turnin Nekrum's Medallion##2991 |goto Blasted Lands 66.9,19.47
step
  talk Historian Karnik##2916
  accept Seeing What Happens##2946 |goto Ironforge 77.54,11.82
step
  talk Thadius Grimshade##8022
  accept The Divination##2992 |goto Blasted Lands 66.9,19.47
step
  note Wait until Grimshade performs the ritual of divination.
  kill Thadius Grimshade##8022 |q 2992 |goto Blasted Lands 66.9,19.47
step
  talk Brohann Caskbelly##5384
  turnin Into The Temple of Atal'Hakkar##1475 |goto Stormwind City 69.45,40.4 |tip {turninat}Stormwind City
step
  talk Kum'isha the Collector##7363
  turnin Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.98,35.65
step
  talk Kum'isha the Collector##7363
  turnin To Serve Kum'isha##2521 |goto Blasted Lands 51.98,35.65
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
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3789 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3790 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  turnin Seeing What Happens##2946 |goto Tanaris 37.63,81.4 |tip {turninat}Tanaris
step
  only Warlock
  talk Daio the Decrepit##14463
  turnin The Prison's Bindings##7581 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  talk Daio the Decrepit##14463
  turnin The Prison's Casing##7582 |goto Blasted Lands 34.13,50.14
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5066 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Quintis Jonespyre##7879
  turnin Jonespyre's Request##3787 |goto Feralas 32.45,43.79 |tip {turninat}Feralas
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5090 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  only Warlock
  talk Daio the Decrepit##14463
  accept Suppression##7583 |goto Blasted Lands 34.13,50.14
step
  only Warlock
  note Venture forth into the Tainted Scar and locate a Doomguard Commander.
  collect Imprisoned Doomguard##18605 |q 7583 |goto Blasted Lands 42.87,72.97
step
  talk Thadius Grimshade##8022
  turnin The Divination##2992 |goto Blasted Lands 66.9,19.47
step
  talk Thadius Grimshade##8022
  accept Return to the Hinterlands##2993 |goto Blasted Lands 66.9,19.47
step
  only Warlock
  talk Daio the Decrepit##14463
  turnin Suppression##7583 |goto Blasted Lands 34.13,50.14
step
  talk Gryphon Master Talonaxe##5636
  turnin Return to the Hinterlands##2993 |goto The Hinterlands 9.75,44.47 |tip {turninat}The Hinterlands
]])
