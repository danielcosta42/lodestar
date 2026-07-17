-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Feralas (45-51)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Hinterlands (48-51)",
}, [[
step
  note {fp}Shyn
  goto Feralas 75.45,44.36 |tip {vendor}
step
  kill Gordunni Ogre##5229 |goto Feralas 75.15,29.76 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-22/FE!##2766 |goto Feralas 75.15,29.76
step
  talk Jangdor Swiftstrider##7854
  accept The Mark of Quality##2822 |goto Feralas 74.43,42.91
step
  note Bring 10 Thick Yeti Hides to Jangdor Swiftstrider in Camp Mojache.
  collect 10 Thick Yeti Hide##8973 |q 2822 |goto Feralas 55.48,56.5 |tip {dropsfrom}Feral Scar Yeti, Hulking Feral Scar, Enraged Feral Scar
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Armor##2854 |goto Feralas 74.43,42.91
step
  note Bring 10 Thick Leather to Jangdor Swiftstrider in Camp Mojache.
  collect 10 Thick Leather##4304 |q 2854 |goto Hillsbrad Foothills 87.3,41.7 |tip {dropsfrom}Wild Gryphon, Searing Whelp, Skhowl
step
  talk Hadoken Swiftstrider##7875
  accept War on the Woodpaw##2862 |goto Feralas 74.91,42.46
step
  note Bring 10 Woodpaw Gnoll Manes to Hadoken Swiftstrider in Camp Mojache.
  collect 10 Woodpaw Gnoll Mane##9237 |q 2862 |goto Feralas 72.44,51.01 |tip {dropsfrom}Woodpaw Mongrel, Woodpaw Trapper, Woodpaw Brute
step
  talk Krueg Skullsplitter##4544
  accept A New Cloak's Sheen##2973 |goto Feralas 75.94,42.74
step
  note Bring 10 Iridescent Sprite Darter Wings to Krueg Skullsplitter in Camp Mojache.
  collect 10 Iridescent Sprite Darter Wing##9369 |q 2973 |goto Feralas 68.51,47.89 |tip {dropsfrom}Sprite Darter, Captured Sprite Darter
step
  talk Rok Orhan##7777
  accept The Ogres of Feralas##2975 |goto Feralas 75.8,43.58
step
  collect Gordunni Scroll##143980 |goto Feralas 75.13,29.73 |tip Loot the quest item here — it starts the quest.
  accept The Gordunni Scroll##2978 |goto Feralas 75.13,29.73
step
  talk Orwin Gizzmick##8021
  accept Gordunni Cobalt##2987 |goto Feralas 75.7,44.31
step
  note Orwin Gizzmick in Camp Mojache wants 12 samples of Gordunni Cobalt.
  collect Gordunni Cobalt##9463 |q 2987 |goto Feralas 75.7,44.31 |tip {dropsfrom}Gordunni Dirt Mound
step
  talk Talo Thornhoof##7776
  accept Dark Heart##3062 |goto Feralas 76.18,43.83
step
  note Talo Thornhoof in Camp Mojache wants Edana Hatetalon's Dark Heart.
  collect Edana's Dark Heart##9528 |q 3062 |goto Feralas 76.18,43.83 |tip {dropsfrom}Edana Hatetalon
step
  talk Talo Thornhoof##7776
  accept Vengeance on the Northspring##3063 |goto Feralas 76.18,43.83
step
  talk Witch Doctor Uzer'i##8115
  accept A Strange Request##3121 |goto Feralas 74.42,43.36
step
  talk Witch Doctor Uzer'i##8115
  accept Testing the Vessel##3123 |goto Feralas 74.42,43.36
step
  note Travel to the Hinterlands, and locate the Wildkin. Kill 10, and use the Muisek Vessel to shrink and capture the fallen Wildkin.
  collect 10 Wildkin Muisek##9594 |q 3123 |goto Feralas 74.42,43.36
step
  talk Witch Doctor Uzer'i##8115
  accept Natural Materials##3128 |goto Feralas 74.42,43.36
step
  note Bring 2 Splintered Logs, 6 Encrusted Minerals, 20 pieces of Resilient Sinew, and 40 Metallic Fragments to Witch Doctor Uzer'i in Camp Mojache.
  collect 2 Splintered Log##9590 |q 3128 |goto Feralas 57.4,47.22 |tip {dropsfrom}Wandering Forest Walker
step
  talk Witch Doctor Uzer'i##8115
  accept The Sunken Temple##3380 |goto Feralas 74.42,43.36
step
  talk Talo Thornhoof##7776
  accept The Strength of Corruption##4120 |goto Feralas 76.18,43.83
step
  talk Azj'Tordin##14355
  accept Pusillin and the Elder Azj'Tordin##7441 |goto Feralas 76.91,37.35
step
  note Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.
  collect Book of Incantations##18261 |q 7441 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Pusillin
step
  talk Talo Thornhoof##7776
  accept Lethtendris's Web##7489 |goto Feralas 76.18,43.83
step
  note Bring Lethtendris's Web to Talo Thornhoof at Camp Mojache in Feralas.
  collect Lethtendris's Web##18426 |q 7489 |goto Dire Maul - Dungeon -1,-1 |elite |tip {dropsfrom}Lethtendris
step
  talk Elder Grimtotem##15581
  accept Grimtotem the Elder##8679 |goto Feralas 76.72,37.9
step
  only Druid
  talk Jannos Lighthoof##8142
  accept Torwa Pathfinder##9063 |goto Feralas 75.99,42.28
step
  note Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Ogres, 10 Gordunni Ogre-Magi, and 5 Gordunni Brutes.
  kill Gordunni Ogre##5229 |q 2975 |goto Feralas 75.15,29.76
step
  talk Neeru Fireblade##3216
  turnin A Strange Request##3121 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  talk Homing Robot OOX-22/FE##7807
  turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.7
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.64,75.96 |tip {turninat}Un'Goro Crater
step
  talk Marvon Rivetseeker##7771
  turnin The Sunken Temple##3380 |goto Tanaris 52.71,45.92 |tip {turninat}Tanaris
step
  talk Zorbin Fandazzle##14637
  accept Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  note Use Zorbin's Ultra-Shrinker to zap any kind of giant found in Feralas into a more manageable form. Bring 15 Miniaturization Residues found on the zapped versions of these giants to Zorbin Fandazzle at the docks of the Forgotten Coast, Feralas.
  collect 15 Miniaturization Residue##18956 |q 7003 |goto Feralas 44.81,43.42 |tip {dropsfrom}Zapped Shore Strider, Zapped Land Walker, Zapped Wave Strider
step
  talk Zorbin Fandazzle##14637
  accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  note Collect 10 Water Elemental Cores from the Sea Elementals and Sea Sprays along the Forgotten Coast of Feralas, and bring them back to Zorbin Fandazzle who is near the dock there.
  collect 10 Water Elemental Core##18958 |q 7721 |goto Feralas 45.33,49.7 |tip {dropsfrom}Sea Elemental, Sea Spray
step
  talk Rokaro##10182
  accept Mistress of Deception##6568 |goto Feralas 46.39,18.24
step
  note Talo Thornhoof at Camp Mojache in Feralas wants you to kill 12 Angerclaw Grizzlies and 12 Felpaw Ravagers in Felwood.
  kill Angerclaw Grizzly##8957 |q 4120 |goto Felwood 55.98,17.08
step
  note Talo Thornhoof wants you to kill 4 Northspring Harpies, 4 Northspring Roguefeathers, 4 Northspring Windcallers, and 4 Northspring Slayers.
  kill Northspring Harpy##5362 |q 3063 |goto Feralas 40.14,14.8
step
  talk Jangdor Swiftstrider##7854
  turnin The Mark of Quality##2822 |goto Feralas 74.43,42.91
step
  talk Azj'Tordin##14355
  turnin Pusillin and the Elder Azj'Tordin##7441 |goto Feralas 76.91,37.35
step
  talk Talo Thornhoof##7776
  turnin The Strength of Corruption##4120 |goto Feralas 76.18,43.83
step
  talk Krueg Skullsplitter##4544
  turnin A New Cloak's Sheen##2973 |goto Feralas 75.94,42.74
step
  talk Rok Orhan##7777
  turnin The Ogres of Feralas##2975 |goto Feralas 75.8,43.58
step
  talk Rok Orhan##7777
  turnin The Gordunni Scroll##2978 |goto Feralas 75.8,43.58
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Armor##2854 |goto Feralas 74.43,42.91
step
  talk Orwin Gizzmick##8021
  turnin Gordunni Cobalt##2987 |goto Feralas 75.7,44.31
step
  talk Hadoken Swiftstrider##7875
  turnin War on the Woodpaw##2862 |goto Feralas 74.91,42.46
step
  talk Witch Doctor Uzer'i##8115
  turnin Testing the Vessel##3123 |goto Feralas 74.42,43.36
step
  talk Witch Doctor Uzer'i##8115
  turnin Natural Materials##3128 |goto Feralas 74.42,43.36
step
  talk Talo Thornhoof##7776
  turnin Lethtendris's Web##7489 |goto Feralas 76.18,43.83
step
  talk Elder Grimtotem##15581
  turnin Grimtotem the Elder##8679 |goto Feralas 76.72,37.9
step
  talk Talo Thornhoof##7776
  turnin Dark Heart##3062 |goto Feralas 76.18,43.83
step
  talk Talo Thornhoof##7776
  turnin Vengeance on the Northspring##3063 |goto Feralas 76.18,43.83
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Shoulders##2855 |goto Feralas 74.43,42.91
step
  note Bring 6 Thick Armor Kits and a Wildvine to Jangdor Swiftstrider in Camp Mojache.
  collect 6 Thick Armor Kit##8173 |q 2855 |goto Uldaman - Dungeon -1,-1 |tip {dropsfrom}Olaf
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Vest##2856 |goto Feralas 74.43,42.91
step
  note Bring 2 Turtle Scale Breastplates, 2 Turtle Scale Gloves, and a Wildvine to Jangdor Swiftstrider in Camp Mojache.
  collect 2 Turtle Scale Breastplate##8189 |q 2856 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Helmet##2857 |goto Feralas 74.43,42.91
step
  note Bring 2 Nightscape Tunics, 2 Nightscape Headbands, and a Wildvine to Jangdor Swiftstrider in Camp Mojache.
  collect 2 Nightscape Tunic##8175 |q 2857 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Boots##2858 |goto Feralas 74.43,42.91
step
  note Bring 2 Nightscape Pants, 2 Nightscape Boots, and 2 Wildvines to Jangdor Swiftstrider in Camp Mojache.
  collect 2 Nightscape Pants##8193 |q 2858 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  accept Wild Leather Leggings##2859 |goto Feralas 74.43,42.91
step
  note Bring 2 Turtle Scale Helms, 2 Turtle Scale Bracers, and 2 Wildvines to Jangdor Swiftstrider in Camp Mojache.
  collect 2 Turtle Scale Helm##8191 |q 2859 |goto Feralas 74.43,42.91
step
  talk Hadoken Swiftstrider##7875
  accept Alpha Strike##2863 |goto Feralas 74.91,42.46
step
  talk Krueg Skullsplitter##4544
  accept A Grim Discovery##2974 |goto Feralas 75.94,42.74
step
  note Bring 20 Grimtotem Horns to Krueg Skullsplitter in Camp Mojache.
  collect 20 Grimtotem Horn##9460 |q 2974 |goto Feralas 67.22,46.35 |tip {dropsfrom}Grimtotem Raider, Grimtotem Naturalist, Grimtotem Shaman
step
  talk Rok Orhan##7777
  accept Dark Ceremony##2979 |goto Feralas 75.8,43.58
step
  note Rok Orhan in Camp Mojache wants you to find a Gordunni Orb.
  collect Gordunni Orb##9371 |q 2979 |goto Feralas 60.27,69.54 |tip {dropsfrom}Gordunni Mage-Lord
step
  talk Rok Orhan##7777
  accept The Ogres of Feralas##2980 |goto Feralas 75.8,43.58
step
  talk Witch Doctor Uzer'i##8115
  accept Hippogryph Muisek##3124 |goto Feralas 74.42,43.36
step
  note Kill 10 Frayfeather Hippogryphs of any type, then use the Muisek Vessel to shrink and capture them.
  collect 10 Hippogryph Muisek##9595 |q 3124 |goto Feralas 74.42,43.36
step
  talk Jangdor Swiftstrider##7854
  accept Improved Quality##7734 |goto Feralas 74.43,42.91
step
  note Bring 10 Rage Scar Yeti Hides to Jangdor Swiftstrider at Camp Mojache, Feralas.
  collect 10 Rage Scar Yeti Hide##18947 |q 7734 |goto Feralas 53.28,31.85 |tip {dropsfrom}Rage Scar Yeti, Elder Rage Scar, Ferocious Rage Scar
step
  note Kill 5 Woodpaw Alphas and return to Hadoken Swiftstrider within one hour.
  kill Woodpaw Alpha##5258 |q 2863 |goto Feralas 71.42,55.63
step
  talk Myranda the Hag##11872
  turnin Mistress of Deception##6568 |goto Western Plaguelands 50.79,77.85 |tip {turninat}Western Plaguelands
step
  note Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Shaman, 10 Gordunni Warlocks, and 5 Gordunni Maulers.
  kill Gordunni Shaman##5236 |q 2980 |goto Feralas 60.44,67.55
step
  talk Zorbin Fandazzle##14637
  turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  talk Zorbin Fandazzle##14637
  turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  talk Krueg Skullsplitter##4544
  turnin A Grim Discovery##2974 |goto Feralas 75.94,42.74
step
  talk Rok Orhan##7777
  turnin Dark Ceremony##2979 |goto Feralas 75.8,43.58
step
  talk Rok Orhan##7777
  turnin The Ogres of Feralas##2980 |goto Feralas 75.8,43.58
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Shoulders##2855 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Vest##2856 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Helmet##2857 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Boots##2858 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  turnin Wild Leather Leggings##2859 |goto Feralas 74.43,42.91
step
  talk Hadoken Swiftstrider##7875
  turnin Alpha Strike##2863 |goto Feralas 74.91,42.46
step
  talk Witch Doctor Uzer'i##8115
  turnin Hippogryph Muisek##3124 |goto Feralas 74.42,43.36
step
  talk Jangdor Swiftstrider##7854
  turnin Improved Quality##7734 |goto Feralas 74.43,42.91
step
  talk Jangdor Swiftstrider##7854
  accept Master of the Wild Leather##2860 |goto Feralas 74.43,42.91
step
  talk Hadoken Swiftstrider##7875
  accept Woodpaw Investigation##2902 |goto Feralas 74.91,42.46
step
  talk Krueg Skullsplitter##4544
  accept A Grim Discovery##2976 |goto Feralas 75.94,42.74
step
  talk Rok Orhan##7777
  accept The Gordunni Orb##3002 |goto Feralas 75.8,43.58
step
  talk Witch Doctor Uzer'i##8115
  accept Faerie Dragon Muisek##3125 |goto Feralas 74.42,43.36
step
  note Kill 8 Sprite Darters or Sprite Dragons. Use the Muisek Vessel to shrink and capture the fallen Faerie Dragons.
  collect 8 Faerie Dragon Muisek##9596 |q 3125 |goto Feralas 74.42,43.36
step
  talk Uthel'nay##7311
  turnin The Gordunni Orb##3002 |goto Orgrimmar 39.16,86.27 |tip {turninat}Orgrimmar
step
  talk Una##3007
  turnin Master of the Wild Leather##2860 |goto Thunder Bluff 41.5,42.57 |tip {turninat}Thunder Bluff
step
  talk Belgrom Rockmaul##4485
  turnin A Grim Discovery##2976 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  talk Witch Doctor Uzer'i##8115
  turnin Faerie Dragon Muisek##3125 |goto Feralas 74.42,43.36
step
  turnin Woodpaw Investigation##2902 |goto Feralas 71.63,55.92
step
  click Woodpaw Battle Map##142195
  accept The Battle Plans##2903 |goto Feralas 71.63,55.92
step
  talk Witch Doctor Uzer'i##8115
  accept Treant Muisek##3126 |goto Feralas 74.42,43.36
step
  note Kill 3 Wandering Forest Walkers. Use the Muisek Vessel to shrink and capture the fallen Treants.
  collect 3 Treant Muisek##9593 |q 3126 |goto Feralas 74.42,43.36
step
  talk Witch Doctor Uzer'i##8115
  turnin Treant Muisek##3126 |goto Feralas 74.42,43.36
step
  talk Hadoken Swiftstrider##7875
  turnin The Battle Plans##2903 |goto Feralas 74.91,42.46
step
  talk Witch Doctor Uzer'i##8115
  accept Mountain Giant Muisek##3127 |goto Feralas 74.42,43.36
step
  note Kill 7 Land Walkers or Cliff Giants. Use the Muisek Vessel to shrink and capture the fallen Mountain Giants.
  collect 7 Mountain Giant Muisek##9597 |q 3127 |goto Feralas 74.42,43.36
step
  talk Hadoken Swiftstrider##7875
  accept Zukk'ash Infestation##7730 |goto Feralas 74.91,42.46
step
  note Bring 20 Zukk'ash Carapaces to Hadoken Swiftstrider at Camp Mojache, Feralas.
  collect 20 Zukk'ash Carapace##18961 |q 7730 |goto Feralas 76.99,64.14 |tip {dropsfrom}Zukk'ash Stinger, Zukk'ash Wasp, Zukk'ash Worker
step
  talk Hadoken Swiftstrider##7875
  accept Stinglasher##7731 |goto Feralas 74.91,42.46
step
  note Defeat Stinglasher in the Writhing Deep, bringing its glands back to Hadoken Swiftstrider at Camp Mojache, Feralas.
  collect Stinglasher's Glands##18962 |q 7731 |goto Feralas 76.99,61.56 |tip {dropsfrom}Stinglasher
step
  talk Hadoken Swiftstrider##7875
  turnin Zukk'ash Infestation##7730 |goto Feralas 74.91,42.46
step
  talk Witch Doctor Uzer'i##8115
  turnin Mountain Giant Muisek##3127 |goto Feralas 74.42,43.36
step
  talk Hadoken Swiftstrider##7875
  turnin Stinglasher##7731 |goto Feralas 74.91,42.46
step
  talk Witch Doctor Uzer'i##8115
  accept Weapons of Spirit##3129 |goto Feralas 74.42,43.36
step
  talk Hadoken Swiftstrider##7875
  accept Zukk'ash Report##7732 |goto Feralas 74.91,42.46
step
  talk Zilzibin Drumlore##7010
  turnin Zukk'ash Report##7732 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  talk Witch Doctor Uzer'i##8115
  turnin Weapons of Spirit##3129 |goto Feralas 74.42,43.36
]])
