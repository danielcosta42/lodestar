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
  talk Brohann Caskbelly##5384
  accept Into The Temple of Atal'Hakkar##1475 |goto Stormwind City 64.33,20.63
step
  note Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind.
  collect 10 Into The Temple of Atal'Hakkar##6288 |q 1475 |goto Stormwind City 64.33,20.63
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
  collect Nekrum's Medallion##9471 |q 2991 |goto Blasted Lands 66.9,19.47 |tip {dropsfrom}Nekrum Gutchewer
step
  talk Innkeeper Saelienne##6735
  accept Assisting Arch Druid Staghelm##3763 |goto Darnassus 67.42,15.65
step
  talk Enohar Thunderbrew##9540
  accept Ragnar Thunderbrew##4128 |goto Blasted Lands 63.63,20.63
step
  talk Caregiver Breel##16739
  accept Assisting Arch Druid Staghelm##10520 |goto The Exodar 59.59,19.4
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3763 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##10520 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
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
  talk Arch Druid Fandral Staghelm##3516
  accept Un'Goro Soil##3764 |goto Darnassus 34.81,9.26
step
  note Bring 20 Un'Goro Soil samples to Jenal at the Cenarion Enclave in Darnassus.
  kill Devilsaur##6498 |goto Un'Goro Crater 34.6,23.68 |elite
  collect 20 Un'Goro Soil##11018 |q 3764 |goto Un'Goro Crater 34.6,23.68
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
  talk Innkeeper Firebrew##5111
  accept Assisting Arch Druid Staghelm##3790 |goto Ironforge 18.15,51.45
step
  only Paladin
  talk Lord Grayson Shadowbreaker##928
  accept Chillwind Camp##8415 |goto Stormwind City 37.16,33.32
step
  talk Myolor Sunderfury##11145
  accept Imperial Plate Armor##10891 |goto Ironforge 51.71,41.41
step
  talk Ragnar Thunderbrew##1267
  turnin Ragnar Thunderbrew##4128 |goto Dun Morogh 46.83,52.36 |tip {turninat}Dun Morogh
step
  only Paladin
  talk Commander Ashlam Valorfist##10838
  turnin Chillwind Camp##8415 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Fallen Hero of the Horde##7572
  turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Innkeeper Allison##6740
  accept Assisting Arch Druid Staghelm##3789 |goto Stormwind City 52.62,65.7
step
  talk Crier Goodman##2198
  accept A Call to Arms: The Plaguelands!##5066 |goto Stormwind City 47.45,64.17
step
  talk Courier Hammerfall##10877
  accept A Call to Arms: The Plaguelands!##5090 |goto Ironforge 55.92,81.39
step
  talk Herald Moonstalker##10878
  accept A Call to Arms: The Plaguelands!##5091 |goto Darnassus 47.81,81.97
step
  only Warrior
  talk Torm Ragetotem##3041
  accept A Troubled Spirit##8417 |goto Thunder Bluff 57.24,87.37
step
  talk Elder Bellowrage##15563
  accept Bellowrage the Elder##8647 |goto Blasted Lands 57.92,54.93
step
  talk Field Marshal Snowfall##15701
  accept Twenty Signets for War Supplies##8849 |goto Ironforge 60.98,73.85
step
  collect Alliance Commendation Signet##21436 |q 8849 |goto Ironforge 60.98,73.85
step
  talk Warlord Gorchuk##15700
  accept Twenty Signets for War Supplies##8854 |goto Orgrimmar 34.92,74.89
step
  collect Twenty Signets for War Supplies##21438 |q 8854 |goto Orgrimmar 34.92,74.89
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
  talk Herald Bran'daan##20722
  accept A Call to Arms: The Plaguelands!##10373 |goto The Exodar 55.43,47.23
step
  talk Brohann Caskbelly##5384
  turnin Into The Temple of Atal'Hakkar##1475 |goto Stormwind City 64.33,20.63 |tip {turninat}Stormwind City
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
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3789 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  turnin Assisting Arch Druid Staghelm##3790 |goto Darnassus 34.81,9.26 |tip {turninat}Darnassus
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
  talk Jenal##9047
  turnin Un'Goro Soil##3764 |goto Darnassus 31.49,8.23 |tip {turninat}Darnassus
step
  talk Arch Druid Fandral Staghelm##3516
  accept Morrowgrain Research##3781 |goto Darnassus 34.81,9.26
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Armor##10891 |goto Tanaris 51.38,28.67 |tip {turninat}Tanaris
step
  talk Kum'isha the Collector##7363
  turnin To Serve Kum'isha##2521 |goto Blasted Lands 51.98,35.65
step
  talk Kum'isha the Collector##7363
  turnin Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.98,35.65
step
  turnin Seeing What Happens##2946 |goto Tanaris 37.63,81.4 |tip {turninat}Tanaris
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##10373 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Elder Bellowrage##15563
  turnin Bellowrage the Elder##8647 |goto Blasted Lands 57.92,54.93
step
  talk Commander Duron##19229
  turnin Through the Dark Portal##10119 |goto Hellfire Peninsula 87.34,50.75 |tip {turninat}Hellfire Peninsula
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5066 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Agent Proudwell##19942
  turnin Into the Breach##10259 |goto Blasted Lands 58.24,55.07
step
  only Warrior
  talk Fallen Hero of the Horde##7572
  turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.14 |tip {turninat}Swamp of Sorrows
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5090 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Commander Ashlam Valorfist##10838
  turnin A Call to Arms: The Plaguelands!##5091 |goto Western Plaguelands 42.7,84.03 |tip {turninat}Western Plaguelands
step
  talk Thadius Grimshade##8022
  turnin The Divination##2992 |goto Blasted Lands 66.9,19.47
step
  talk Thadius Grimshade##8022
  accept Return to the Hinterlands##2993 |goto Blasted Lands 66.9,19.47
step
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3781 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Mathrengyl Bearwalker##4217
  accept Morrowgrain Research##3785 |goto Darnassus 35.37,8.4
step
  note Use an Evergreen Pouch with a Packet of Tharlendis Seeds and two Un'Goro Soil samples to try and cultivate samples of Morrowgrain.
  collect Morrowgrain##11040 |q 3785 |goto Darnassus 35.37,8.4
step
  talk Gryphon Master Talonaxe##5636
  turnin Return to the Hinterlands##2993 |goto The Hinterlands 9.75,44.47 |tip {turninat}The Hinterlands
step
  talk Mathrengyl Bearwalker##4217
  turnin Morrowgrain Research##3785 |goto Darnassus 35.37,8.4 |tip {turninat}Darnassus
step
  talk Tannysa##5566
  accept Jonespyre's Request##3787 |goto Stormwind City 44.73,77.11
step
  talk Quintis Jonespyre##7879
  turnin Jonespyre's Request##3787 |goto Feralas 32.45,43.79 |tip {turninat}Feralas
]])
