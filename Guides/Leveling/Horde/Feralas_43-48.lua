-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Feralas (43-48)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tanaris (44-50)",
	rev = "41ac63b2",
}, [[
step
  ding 41
step
  talk Belgrom Rockmaul##4485
  accept A Threat in Feralas##2981 |goto Orgrimmar 75.23,34.24
step
  note {fp}Shyn
  goto Feralas 75.45,44.36 |tip {vendor}
step
  note Belgrom Rockmaul wants you to speak with Rok Orhan in Camp Mojache.
  talk Rok Orhan##7777
  turnin A Threat in Feralas##2981 |goto Feralas 75.8,43.58
step
  talk Hadoken Swiftstrider##7875
  accept War on the Woodpaw##2862 |goto Feralas 74.91,42.46
step
  talk Rok Orhan##7777
  accept The Ogres of Feralas##2975 |goto Feralas 75.8,43.58
step
  talk Orwin Gizzmick##8021
  accept Gordunni Cobalt##2987 |goto Feralas 75.7,44.31
step
  note Bring 10 Woodpaw Gnoll Manes to Hadoken Swiftstrider in Camp Mojache.
  collect 10 Woodpaw Gnoll Mane##9237 |q 2862 |goto Feralas 70.38,51.01 |tip {dropsfrom}Woodpaw Mongrel, Woodpaw Trapper, Woodpaw Brute
step
  talk Hadoken Swiftstrider##7875
  turnin War on the Woodpaw##2862 |goto Feralas 74.91,42.46
step
  talk Krueg Skullsplitter##4544
  accept A New Cloak's Sheen##2973 |goto Feralas 75.94,42.74
step
  talk Witch Doctor Uzer'i##8115
  accept A Strange Request##3121 |goto Feralas 74.42,43.36
step
  talk Hadoken Swiftstrider##7875
  accept Alpha Strike##2863 |goto Feralas 74.91,42.46
step
  note Kill 5 Woodpaw Alphas and return to Hadoken Swiftstrider within one hour.
  kill Woodpaw Alpha##5258 |q 2863 |goto Feralas 71.42,55.91
step
  talk Hadoken Swiftstrider##7875
  turnin Alpha Strike##2863 |goto Feralas 74.91,42.46
step
  talk Hadoken Swiftstrider##7875
  accept Woodpaw Investigation##2902 |goto Feralas 74.91,42.46
step
  note Find the gnoll battle plans somewhere in the gnoll camps to the south of Camp Mojache.
  turnin Woodpaw Investigation##2902 |goto Feralas 71.63,55.92
step
  click Woodpaw Battle Map##142195
  accept The Battle Plans##2903 |goto Feralas 71.63,55.92
step
  note Bring 10 Iridescent Sprite Darter Wings to Krueg Skullsplitter in Camp Mojache.
  collect 10 Iridescent Sprite Darter Wing##9369 |q 2973 |goto Feralas 68.42,47.89 |tip {dropsfrom}Sprite Darter, Captured Sprite Darter
step
  collect Gordunni Scroll##143980 |goto Feralas 75.13,29.73 |tip Loot the quest item here — it starts the quest.
  accept The Gordunni Scroll##2978 |goto Feralas 75.13,29.73
step
  kill Gordunni Ogre##5229 |goto Feralas 75.21,29.62 |tip Loot the quest item here — it starts the quest.
  accept Find OOX-22/FE!##2766 |goto Feralas 75.21,29.62
step
  note Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Ogres, 10 Gordunni Ogre-Magi, and 5 Gordunni Brutes.
  kill Gordunni Ogre##5229 |q 2975/1 |goto Feralas 75.21,29.62
  kill Gordunni Ogre Mage##5237 |q 2975/2 |goto Feralas 75.54,33.41
  kill Gordunni Brute##5232 |q 2975 |goto Feralas 75.69,34.02
step
  note Orwin Gizzmick in Camp Mojache wants 12 samples of Gordunni Cobalt.
  collect Gordunni Cobalt##9463 |q 2987 |goto Feralas 76.7,33.8 |tip {dropsfrom}Gordunni Dirt Mound
step
  note Bring the Woodpaw Battle Plans to Hadoken Swiftstrider in Camp Mojache.
  talk Hadoken Swiftstrider##7875
  turnin The Battle Plans##2903 |goto Feralas 74.91,42.46
step
  talk Krueg Skullsplitter##4544
  turnin A New Cloak's Sheen##2973 |goto Feralas 75.94,42.74
step
  talk Rok Orhan##7777
  turnin The Ogres of Feralas##2975 |goto Feralas 75.8,43.58
step
  note Bring the Gordunni Scroll to Rok Orhan in Camp Mojache.
  talk Rok Orhan##7777
  turnin The Gordunni Scroll##2978 |goto Feralas 75.8,43.58
step
  talk Orwin Gizzmick##8021
  turnin Gordunni Cobalt##2987 |goto Feralas 75.7,44.31
step
  talk Rok Orhan##7777
  accept The Ogres of Feralas##2980 |goto Feralas 75.8,43.58
step
  talk Krueg Skullsplitter##4544
  accept A Grim Discovery##2974 |goto Feralas 75.94,42.74
step
  talk Hadoken Swiftstrider##7875
  accept Zukk'ash Infestation##7730 |goto Feralas 74.91,42.46
step
  talk Jangdor Swiftstrider##7854
  accept The Mark of Quality##2822 |goto Feralas 74.43,42.91
step
  talk Rok Orhan##7777
  accept Dark Ceremony##2979 |goto Feralas 75.8,43.58
step
  talk Hadoken Swiftstrider##7875
  accept Stinglasher##7731 |goto Feralas 74.91,42.46
step
  note Bring 20 Grimtotem Horns to Krueg Skullsplitter in Camp Mojache.
  collect 20 Grimtotem Horn##9460 |q 2974 |goto Feralas 67.22,46.37 |tip {dropsfrom}Grimtotem Raider, Grimtotem Naturalist, Grimtotem Shaman
step
  note Bring 20 Zukk'ash Carapaces to Hadoken Swiftstrider at Camp Mojache, Feralas.
  collect 20 Zukk'ash Carapace##18961 |q 7730 |goto Feralas 78.01,64.14 |tip {dropsfrom}Zukk'ash Stinger, Zukk'ash Wasp, Zukk'ash Worker
step
  note Defeat Stinglasher in the Writhing Deep, bringing its glands back to Hadoken Swiftstrider at Camp Mojache, Feralas.
  collect Stinglasher's Glands##18962 |q 7731 |goto Feralas 75.58,60.85 |tip {dropsfrom}Stinglasher
step
  note Rok Orhan in Camp Mojache wants you to find a Gordunni Orb.
  collect Gordunni Orb##9371 |q 2979 |goto Feralas 60.77,69.54 |tip {dropsfrom}Gordunni Mage-Lord
step
  note Rok Orhan in Camp Mojache wants you to kill 10 Gordunni Shaman, 10 Gordunni Warlocks, and 5 Gordunni Maulers.
  kill Gordunni Shaman##5236 |q 2980/1 |goto Feralas 60.98,67.86
  kill Gordunni Warlock##5240 |q 2980/2 |goto Feralas 59.55,64.55
  kill Gordunni Mauler##5234 |q 2980 |goto Feralas 61.11,57.53
step
  note Take the distress beacon to Oglethorpe's homing robot in a cave near Feral Scar Vale.
  talk Homing Robot OOX-22/FE##7807
  turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.7
step
  note Bring 10 Thick Yeti Hides to Jangdor Swiftstrider in Camp Mojache.
  collect 10 Thick Yeti Hide##8973 |q 2822 |goto Feralas 55.55,56.47 |tip {dropsfrom}Feral Scar Yeti, Hulking Feral Scar, Enraged Feral Scar
step
  talk Jangdor Swiftstrider##7854
  turnin The Mark of Quality##2822 |goto Feralas 74.43,42.91
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
  talk Hadoken Swiftstrider##7875
  turnin Zukk'ash Infestation##7730 |goto Feralas 74.91,42.46
step
  talk Hadoken Swiftstrider##7875
  turnin Stinglasher##7731 |goto Feralas 74.91,42.46
step
  talk Krueg Skullsplitter##4544
  accept A Grim Discovery##2976 |goto Feralas 75.94,42.74
step
  talk Rok Orhan##7777
  accept The Gordunni Orb##3002 |goto Feralas 75.8,43.58
step
  talk Hadoken Swiftstrider##7875
  accept Zukk'ash Report##7732 |goto Feralas 74.91,42.46
step
  talk Jangdor Swiftstrider##7854
  accept Improved Quality##7734 |goto Feralas 74.43,42.91
step
  note Bring 10 Rage Scar Yeti Hides to Jangdor Swiftstrider at Camp Mojache, Feralas.
  collect 10 Rage Scar Yeti Hide##18947 |q 7734 |goto Feralas 53.28,31.85 |tip {dropsfrom}Rage Scar Yeti, Elder Rage Scar, Ferocious Rage Scar
step
  only level>=45
  talk Zorbin Fandazzle##14637
  accept Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  only level>=45
  talk Zorbin Fandazzle##14637
  accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  only haveq(7003)
  note Use Zorbin's Ultra-Shrinker to zap any kind of giant found in Feralas into a more manageable form. Bring 15 Miniaturization Residues found on the zapped versions of these giants to Zorbin Fandazzle at the docks of the Forgotten Coast, Feralas.
  collect 15 Miniaturization Residue##18956 |q 7003 |goto Feralas 42.52,46.88 |tip {dropsfrom}Zapped Shore Strider, Land Walker, Shore Strider
step
  only haveq(7721)
  note Collect 10 Water Elemental Cores from the Sea Elementals and Sea Sprays along the Forgotten Coast of Feralas, and bring them back to Zorbin Fandazzle who is near the dock there.
  collect 10 Water Elemental Core##18958 |q 7721 |goto Feralas 44.21,49.69 |tip {dropsfrom}Sea Elemental, Sea Spray
step
  only haveq(7003)
  talk Zorbin Fandazzle##14637
  turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
step
  only haveq(7721)
  talk Zorbin Fandazzle##14637
  turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
  talk Jangdor Swiftstrider##7854
  turnin Improved Quality##7734 |goto Feralas 74.43,42.91
step
  only level>=50
  talk Talo Thornhoof##7776
  accept Dark Heart##3062 |goto Feralas 76.18,43.83
step
  only level>=45
  talk Talo Thornhoof##7776
  accept Vengeance on the Northspring##3063 |goto Feralas 76.18,43.83
step
  only haveq(3062)
  note Talo Thornhoof in Camp Mojache wants Edana Hatetalon's Dark Heart.
  kill Edana Hatetalon##8075 |q 3062 |goto Feralas 40.55,8.6 |elite
  collect Edana's Dark Heart##9528 |q 3062 |goto Feralas 40.55,8.6
step
  only haveq(3063)
  note Talo Thornhoof wants you to kill 4 Northspring Harpies, 4 Northspring Roguefeathers, 4 Northspring Windcallers, and 4 Northspring Slayers.
  kill Northspring Windcaller##5366 |q 3063/4 |goto Feralas 39.14,13.05
  kill Northspring Harpy##5362 |q 3063/1 |goto Feralas 40.02,14.34
  kill Northspring Slayer##5364 |q 3063/3 |goto Feralas 38.86,14.63
  kill Northspring Roguefeather##5363 |q 3063 |goto Feralas 41.55,14.39
step
  only haveq(3062)
  talk Talo Thornhoof##7776
  turnin Dark Heart##3062 |goto Feralas 76.18,43.83
step
  only haveq(3063)
  talk Talo Thornhoof##7776
  turnin Vengeance on the Northspring##3063 |goto Feralas 76.18,43.83
step
  only level>=46
  talk Witch Doctor Uzer'i##8115
  accept The Sunken Temple##3380 |goto Feralas 74.42,43.36
step
  only level>=47
  talk Talo Thornhoof##7776
  accept The Strength of Corruption##4120 |goto Feralas 76.18,43.83
step
  only haveq(1188)
  note Bring the Seaforium Booster to Shreev in Gadgetzan.
  talk Shreev##4708
  turnin Safety First##1188 |goto Tanaris 50.96,27.24 |tip {turninat}Tanaris
step
  only haveq(3380)
  note Find Marvon Rivetseeker in Tanaris.
  talk Marvon Rivetseeker##7771
  turnin The Sunken Temple##3380 |goto Tanaris 52.71,45.92 |tip {turninat}Tanaris
step
  note Take the Shrunken Head to Neeru Fireblade in Orgrimmar.
  talk Neeru Fireblade##3216
  turnin A Strange Request##3121 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  talk Neeru Fireblade##3216
  accept Return to Witch Doctor Uzer'i##3122 |goto Orgrimmar 49.47,50.59
step
  note Deliver the Camp Mojache Zukk'ash Report to Zilzibin Drumlore. He resides in the Drag of Orgrimmar.
  talk Zilzibin Drumlore##7010
  turnin Zukk'ash Report##7732 |goto Orgrimmar 56.26,46.68 |tip {turninat}Orgrimmar
step
  note Bring the Crate of Grimtotem Horns to Belgrom Rockmaul in Orgrimmar.
  talk Belgrom Rockmaul##4485
  turnin A Grim Discovery##2976 |goto Orgrimmar 75.23,34.24 |tip {turninat}Orgrimmar
step
  note Bring the Gordunni Orb to Uthel'nay in the Darkbriar Lodge in Orgrimmar.
  talk Uthel'nay##7311
  turnin The Gordunni Orb##3002 |goto Orgrimmar 39.16,86.27 |tip {turninat}Orgrimmar
step
  only completed(2280)
  talk Sage Truthseeker##3978
  accept The Platinum Discs##2440 |goto Thunder Bluff 34.4,46.87
step
  only completed(2280)
  note Take the reward voucher to Bena Winterhoof in Thunder Bluff.
  talk Bena Winterhoof##3009
  turnin The Platinum Discs##2440 |goto Thunder Bluff 46.62,33.17 |tip {turninat}Thunder Bluff
step
  only haveq(4120)
  note Talo Thornhoof at Camp Mojache in Feralas wants you to kill 12 Angerclaw Grizzlies and 12 Felpaw Ravagers in Felwood.
  kill Angerclaw Grizzly##8957 |q 4120/1 |goto Felwood 57.6,17.79
  kill Felpaw Ravager##8961 |q 4120 |goto Felwood 56.53,21.22
step
  only haveq(4120)
  talk Talo Thornhoof##7776
  turnin The Strength of Corruption##4120 |goto Feralas 76.18,43.83
step
  note Deliver Neeru's Herb Pouch to Witch Doctor Uzer'i in Feralas.
  talk Witch Doctor Uzer'i##8115
  turnin Return to Witch Doctor Uzer'i##3122 |goto Feralas 74.42,43.36
step
  talk Witch Doctor Uzer'i##8115
  accept Natural Materials##3128 |goto Feralas 74.42,43.36
step
  note Bring 2 Splintered Logs, 6 Encrusted Minerals, 20 pieces of Resilient Sinew, and 40 Metallic Fragments to Witch Doctor Uzer'i in Camp Mojache.
  collect 2 Splintered Log##9590 |q 3128/1 |goto Feralas 54.02,47.22 |tip {dropsfrom}Wandering Forest Walker
  collect Resilient Sinew##9591 |q 3128/3 |goto Feralas 55.48,62.22 |tip {dropsfrom}Frayfeather Hippogryph, Frayfeather Stagwing, Frayfeather Skystormer
  collect 40 Metallic Fragments##9592 |q 3128/4 |goto Feralas 55.48,62.22 |tip {dropsfrom}Frayfeather Hippogryph, Frayfeather Stagwing, Frayfeather Skystormer
  collect 6 Encrusted Minerals##9589 |q 3128 |goto Feralas 44.26,22.29 |tip {dropsfrom}Sprite Dragon, Sprite Darter, Land Walker
step
  talk Witch Doctor Uzer'i##8115
  turnin Natural Materials##3128 |goto Feralas 74.42,43.36
step
  note {travel}Tanaris
  goto Tanaris 52.46,28.51
]])
