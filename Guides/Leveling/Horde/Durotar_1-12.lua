-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Durotar (1-12)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Eversong Woods (2-10)",
}, [[
step
  talk Gornek##3143
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  talk Hana'zua##3287
  accept Sarkoth##790 |goto Durotar 40.6,62.58
step
  note Kill Sarkoth and bring his claw back to Hana'zua.
  collect Sarkoth's Mangled Claw##4905 |q 790 |goto Durotar 40.5,66.83 |tip {dropsfrom}Sarkoth
step
  talk Zureetha Fargaze##3145
  accept Vile Familiars##792 |goto Durotar 42.85,69.15
step
  only Druid
  talk Ruzan##5765
  accept Vile Familiars##1485 |goto Durotar 42.59,69.0
step
  only Druid
  note Bring 6 Vile Familiar Heads to Ruzan.
  collect 6 Vile Familiar Head##6487 |q 1485 |goto Durotar 44.24,55.54 |tip {dropsfrom}Vile Familiar
step
  only Mage
  talk Canaga Earthcaller##5887
  accept Call of Earth##1516 |goto Durotar 42.4,69.17
step
  only Mage
  note Bring 2 Felstalker Hooves to Canaga Earthcaller in the Valley of Trials.
  collect 2 Felstalker Hoof##6640 |q 1516 |goto Durotar 44.29,54.18 |tip {dropsfrom}Felstalker
step
  talk Kaltunk##10176
  accept Your Place In The World##4641 |goto Durotar 43.29,68.53
step
  talk Foreman Thazz'ril##11378
  accept Lazy Peons##5441 |goto Durotar 44.63,68.65
step
  only Troll Priest
  talk Ken'jai##3707
  accept In Favor of Spirituality##5649 |goto Durotar 42.36,68.81
step
  note Use the Foreman's Blackjack on Lazy Peons when they're sleeping. Wake up 5 peons, then return the Foreman's Blackjack to Foreman Thazz'ril in the Valley of Trials.
  use Lazy Peon##10556 |q 5441 |goto Durotar 44.67,65.45 |tip {useit}
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  kill Mottled Boar##3098 |q 788 |goto Durotar 44.44,64.81
step
  note Kill 12 Vile Familiars.
  kill Vile Familiar##3101 |q 792 |goto Durotar 44.24,55.54
step
  talk Lar Prowltusk##3140
  accept Thwarting Kolkar Aggression##786 |goto Durotar 54.24,73.28
step
  talk Master Gadrin##3188
  accept Minshina's Skull##808 |goto Durotar 55.95,74.72
step
  note Retrieve Minshina's skull from the circle of power on the Echo Isles.
  collect Minshina's Skull##4864 |q 808 |goto Durotar 67.45,87.82 |tip {dropsfrom}Imprisoned Darkspear
step
  talk Vel'rin Fang##3194
  accept Practical Prey##817 |goto Durotar 55.96,73.93
step
  note Bring 4 Durotar Tiger Furs to Vel'rin Fang in Sen'jin Village.
  collect 4 Durotar Tiger Fur##4892 |q 817 |goto Durotar 64.63,84.83 |tip {dropsfrom}Durotar Tiger
step
  talk Master Vornal##3304
  accept A Solvent Spirit##818 |goto Durotar 55.94,74.39
step
  note Bring 4 Intact Makrura Eyes and 8 vials of Crawler Mucus to Master Vornal in Sen'jin Village.
  collect 4 Intact Makrura Eye##4887 |q 818 |goto Durotar 62.83,72.51 |tip {dropsfrom}Makrura Clacker, Makrura Shellhide, Makrura Snapclaw
step
  talk Master Gadrin##3188
  accept Report to Orgnil##823 |goto Durotar 55.95,74.72
step
  talk Master Gadrin##3188
  accept Zalazane##826 |goto Durotar 55.95,74.72
step
  only Warlock
  talk Un'Thuwa##5880
  accept Ju-Ju Heaps##1884 |goto Durotar 56.31,75.11
step
  talk Ukor##6786
  accept A Peon's Burden##2161 |goto Durotar 52.06,68.31
step
  note Defeat Zalazane.
  kill Hexed Troll##3207 |q 826 |goto Durotar 67.7,84.01
step
  only Warlock
  note Destroy 4 Ju-Ju Heaps, then return to Un'thuwa in Sen'jin Village.
  collect Ju-Ju Heap##102986 |q 1884 |goto Durotar 67.79,83.37
step
  only Troll Priest
  talk Tai'jin##3706
  turnin In Favor of Spirituality##5649 |goto Durotar 54.26,42.93
step
  talk Orgnil Soulscar##3142
  turnin Report to Orgnil##823 |goto Durotar 52.24,43.15
step
  talk Innkeeper Grosk##6928
  turnin A Peon's Burden##2161 |goto Durotar 51.51,41.64
step
  talk Gar'Thok##3139
  accept Vanquish the Betrayers##784 |goto Durotar 51.95,43.5
step
  talk Furl Scornbrow##3147
  accept Carry Your Weight##791 |goto Durotar 49.88,40.39
step
  note Furl Scornbrow in the Razor Hill watchtower wants 8 Canvas Scraps.
  collect Canvas Scraps##4870 |q 791 |goto Durotar 49.89,79.65 |tip {dropsfrom}Kolkar Drudge, Kolkar Outrunner, Kul Tiras Sailor
step
  talk Orgnil Soulscar##3142
  accept Dark Storms##806 |goto Durotar 52.24,43.15
step
  note Bring Fizzle's Claw to Orgnil Soulscar in Razor Hill.
  collect Fizzle's Claw##4869 |q 806 |goto Durotar 42.12,26.66 |tip {dropsfrom}Fizzle Darkstorm
step
  talk Cook Torka##3191
  accept Break a Few Eggs##815 |goto Durotar 51.11,42.45
step
  note Bring 3 Taillasher Eggs to Cook Torka in Razor Hill.
  collect 3 Taillasher Egg##4890 |q 815 |goto Durotar 64.93,78.8 |tip {dropsfrom}Taillasher Eggs
step
  talk Gar'Thok##3139
  accept The Admiral's Orders##831 |goto Durotar 51.95,43.5
step
  talk Gar'Thok##3139
  accept Encroachment##837 |goto Durotar 51.95,43.5
step
  talk Takrin Pathseeker##3336
  accept Conscript of the Horde##840 |goto Durotar 50.84,43.59
step
  only Rogue
  talk Kaplak##3170
  accept Therzok##1859 |goto Durotar 51.98,43.69
step
  only Troll Priest
  talk Tai'jin##3706
  accept Garments of Spirituality##5648 |goto Durotar 54.26,42.93
step
  only Troll Priest
  talk Tai'jin##3706
  accept Hex of Weakness##5654 |goto Durotar 54.26,42.93
step
  only Undead Priest
  talk Tai'jin##3706
  accept Touch of Weakness##5660 |goto Durotar 54.26,42.93
step
  note Kill 10 Kul Tiras Sailors, 8 Kul Tiras Marines and Lieutenant Benedict and return to Gar'Thok in Razor Hill.
  kill Kul Tiras Sailor##3128 |q 784 |goto Durotar 57.39,57.21
step
  only Troll Priest
  note Find Grunt Kor'ja and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Tai'jin at Razor Hill.
  kill Grunt Kor'ja##12430 |q 5648 |goto Durotar 53.1,46.46
step
  note Kill 4 Razormane Quilboars, 4 Razormane Scouts, 4 Razormane Dustrunners and 4 Razormane Battleguards for Gar'Thok at Razor Hill.
  kill Razormane Quilboar##3111 |q 837 |goto Durotar 48.91,48.75
step
  talk Vol'jin##10540
  turnin The Admiral's Orders##831 |goto Orgrimmar 34.34,36.33 |tip {turninat}Orgrimmar
step
  talk Misha Tor'kren##3193
  accept Lost But Not Forgotten##816 |goto Durotar 43.1,30.24
step
  note Bring a sign of Kron's fate to Misha Tor'kren at the farmstead northwest of Razor Hill.
  collect Kron's Amulet##4891 |q 816 |goto Durotar 35.29,46.04 |tip {dropsfrom}Dreadmaw Crocolisk, Corrupted Dreadmaw Crocolisk
step
  talk Rezlak##3293
  accept Winds in the Desert##834 |goto Durotar 46.37,22.94
step
  note Retrieve 5 Sacks of Supplies and return them to Rezlak near Orgrimmar.
  collect 5 Sack of Supplies##4918 |q 834 |goto Durotar 49.63,29.67 |tip {dropsfrom}Stolen Supply Sack
step
  talk Rhinag##3190
  accept Need for a Cure##812 |goto Durotar 41.54,18.6
step
  note Find Kor'ghan in Orgrimmar and get the Venomtail Antidote. Then bring the antidote to Rhinag near the northwestern border of Durotar.
  collect Venomtail Antidote##4904 |q 812 |goto Durotar 41.54,18.6
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5660 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  talk Wonderform Operator##15732
  accept Winter's Presents##8828 |goto Durotar 49.99,13.59
step
  talk Kargal Battlescar##3337
  turnin Conscript of the Horde##840 |goto The Barrens 62.26,19.38 |tip {turninat}The Barrens
step
  talk Gornek##3143
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
step
  talk Hana'zua##3287
  turnin Sarkoth##790 |goto Durotar 40.6,62.58
step
  talk Zureetha Fargaze##3145
  turnin Vile Familiars##792 |goto Durotar 42.85,69.15
step
  talk Gornek##3143
  turnin Your Place In The World##4641 |goto Durotar 42.06,68.33
step
  talk Foreman Thazz'ril##11378
  turnin Lazy Peons##5441 |goto Durotar 44.63,68.65
step
  only Druid
  talk Ruzan##5765
  turnin Vile Familiars##1485 |goto Durotar 42.59,69.0
step
  only Mage
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1516 |goto Durotar 42.4,69.17
step
  talk Gornek##3143
  accept Sting of the Scorpid##789 |goto Durotar 42.06,68.33
step
  note Get 10 Scorpid Worker Tails for Gornek in the Den.
  collect Scorpid Worker Tail##4862 |q 789 |goto Durotar 41.49,62.94 |tip {dropsfrom}Scorpid Worker, Sarkoth
step
  talk Zureetha Fargaze##3145
  accept Burning Blade Medallion##794 |goto Durotar 42.85,69.15
step
  note Bring the Burning Blade Medallion to Zureetha Fargaze, outside The Den.
  collect Burning Blade Medallion##4859 |q 794 |goto Durotar 42.71,52.95 |tip {dropsfrom}Yarrog Baneshadow
step
  talk Hana'zua##3287
  accept Sarkoth##804 |goto Durotar 40.6,62.58
step
  only Druid
  talk Ruzan##5765
  accept Vile Familiars##1499 |goto Durotar 42.59,69.0
step
  only Mage
  talk Canaga Earthcaller##5887
  accept Call of Earth##1517 |goto Durotar 42.4,69.17
step
  only Orc Warrior
  talk Gornek##3143
  accept Simple Parchment##2383 |goto Durotar 42.06,68.33
step
  only Troll Warrior
  talk Gornek##3143
  accept Simple Tablet##3065 |goto Durotar 42.06,68.33
step
  only Troll Hunter
  talk Gornek##3143
  accept Etched Tablet##3082 |goto Durotar 42.06,68.33
step
  only Troll Rogue
  talk Gornek##3143
  accept Encrypted Tablet##3083 |goto Durotar 42.06,68.33
step
  only Troll Mage
  talk Gornek##3143
  accept Rune-Inscribed Tablet##3084 |goto Durotar 42.06,68.33
step
  only Troll Priest
  talk Gornek##3143
  accept Hallowed Tablet##3085 |goto Durotar 42.06,68.33
step
  only Troll Warlock
  talk Gornek##3143
  accept Glyphic Tablet##3086 |goto Durotar 42.06,68.33
step
  only Orc Hunter
  talk Gornek##3143
  accept Etched Parchment##3087 |goto Durotar 42.06,68.33
step
  only Rogue
  talk Gornek##3143
  accept Encrypted Parchment##3088 |goto Durotar 42.06,68.33
step
  only Orc Mage
  talk Gornek##3143
  accept Rune-Inscribed Parchment##3089 |goto Durotar 42.06,68.33
step
  only Orc Druid
  talk Gornek##3143
  accept Tainted Parchment##3090 |goto Durotar 42.06,68.33
step
  talk Galgar##9796
  accept Galgar's Cactus Apple Surprise##4402 |goto Durotar 42.73,67.23
step
  note Bring Galgar 10 Cactus Apples. You remember him saying that they could be found near cactuses.
  collect Cactus Apple##11583 |q 4402 |goto Durotar 44.04,63.02 |tip {dropsfrom}Cactus Apple
step
  talk Foreman Thazz'ril##11378
  accept Thazz'ril's Pick##6394 |goto Durotar 44.63,68.65
step
  note Bring Thazz'ril's Pick to Foreman Thazz'ril.
  collect Thazz'ril's Pick##16332 |q 6394 |goto Durotar 43.73,53.79 |tip {dropsfrom}Thazz'ril's Pick
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5654 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Mage
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1517 |goto Durotar 44.03,76.2
step
  note Lar Prowltusk outside of Sen'jin Village wants you to destroy the 3 sets of Attack Plans held within Kolkar Crag.
  collect Attack Plan: Valley of Trials##3189 |q 786 |goto Durotar 49.81,81.29
step
  talk Lar Prowltusk##3140
  turnin Thwarting Kolkar Aggression##786 |goto Durotar 54.24,73.28
step
  talk Master Gadrin##3188
  turnin Minshina's Skull##808 |goto Durotar 55.95,74.72
step
  talk Vel'rin Fang##3194
  turnin Practical Prey##817 |goto Durotar 55.96,73.93
step
  talk Master Vornal##3304
  turnin A Solvent Spirit##818 |goto Durotar 55.94,74.39
step
  talk Master Gadrin##3188
  turnin Zalazane##826 |goto Durotar 55.95,74.72
step
  only Warlock
  talk Un'Thuwa##5880
  turnin Ju-Ju Heaps##1884 |goto Durotar 56.31,75.11
step
  talk Great-father Winter##13445
  turnin Winter's Presents##8828 |goto Orgrimmar 52.49,69.18 |tip {turninat}Orgrimmar
step
  talk Gar'Thok##3139
  turnin Vanquish the Betrayers##784 |goto Durotar 51.95,43.5
step
  only Troll Priest
  talk Tai'jin##3706
  turnin Garments of Spirituality##5648 |goto Durotar 54.26,42.93
step
  talk Furl Scornbrow##3147
  turnin Carry Your Weight##791 |goto Durotar 49.88,40.39
step
  talk Orgnil Soulscar##3142
  turnin Dark Storms##806 |goto Durotar 52.24,43.15
step
  talk Cook Torka##3191
  turnin Break a Few Eggs##815 |goto Durotar 51.11,42.45
step
  only Rogue
  talk Therzok##6446
  turnin Therzok##1859 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
step
  talk Gar'Thok##3139
  turnin Encroachment##837 |goto Durotar 51.95,43.5
step
  talk Gar'Thok##3139
  accept From The Wreckage....##825 |goto Durotar 51.95,43.5
step
  note Gar'Thok of Razor Hill wants you to retrieve 3 Gnomish Tools from the wreckage off the coast.
  collect 3 Gnomish Tools##4863 |q 825 |goto Durotar 62.43,53.46 |tip {dropsfrom}Gnomish Toolbox
step
  talk Orgnil Soulscar##3142
  accept Margoz##828 |goto Durotar 52.24,43.15
step
  talk Misha Tor'kren##3193
  turnin Lost But Not Forgotten##816 |goto Durotar 43.1,30.24
step
  talk Rezlak##3293
  turnin Winds in the Desert##834 |goto Durotar 46.37,22.94
step
  talk Rezlak##3293
  accept Securing the Lines##835 |goto Durotar 46.37,22.94
step
  talk Rhinag##3190
  turnin Need for a Cure##812 |goto Durotar 41.54,18.6
step
  talk Margoz##3208
  turnin Margoz##828 |goto Durotar 56.41,20.04
step
  talk Margoz##3208
  accept Skull Rock##827 |goto Durotar 56.41,20.04
step
  note Gather Searing Collars from the cultists in Skull Rock.
  collect Searing Collar##4871 |q 827 |goto Durotar 53.04,29.14 |tip {dropsfrom}Burning Blade Thug, Burning Blade Neophyte, Burning Blade Fanatic
step
  note Kill 12 Dustwind Savages and 8 Dustwind Storm Witches for Rezlak near Drygulch Ravine.
  kill Dustwind Savage##3117 |q 835 |goto Durotar 53.69,23.92
step
  only Troll Hunter
  talk Jen'shan##3154
  turnin Etched Tablet##3082 |goto Durotar 42.84,69.33
step
  only Troll Rogue
  talk Rwag##3155
  turnin Encrypted Tablet##3083 |goto Durotar 41.28,68.0
step
  only Troll Mage
  talk Shikrik##3157
  turnin Rune-Inscribed Tablet##3084 |goto Durotar 42.39,69.0
step
  only Troll Priest
  talk Ken'jai##3707
  turnin Hallowed Tablet##3085 |goto Durotar 42.36,68.81
step
  only Troll Warlock
  talk Mai'ah##5884
  turnin Glyphic Tablet##3086 |goto Durotar 42.51,69.04
step
  only Orc Hunter
  talk Jen'shan##3154
  turnin Etched Parchment##3087 |goto Durotar 42.84,69.33
step
  only Rogue
  talk Rwag##3155
  turnin Encrypted Parchment##3088 |goto Durotar 41.28,68.0
step
  talk Gornek##3143
  turnin Sting of the Scorpid##789 |goto Durotar 42.06,68.33
step
  only Orc Druid
  talk Nartok##3156
  turnin Tainted Parchment##3090 |goto Durotar 40.65,68.52
step
  only Orc Mage
  talk Shikrik##3157
  turnin Rune-Inscribed Parchment##3089 |goto Durotar 42.39,69.0
step
  talk Zureetha Fargaze##3145
  turnin Burning Blade Medallion##794 |goto Durotar 42.85,69.15
step
  talk Gornek##3143
  turnin Sarkoth##804 |goto Durotar 42.06,68.33
step
  talk Galgar##9796
  turnin Galgar's Cactus Apple Surprise##4402 |goto Durotar 42.73,67.23
step
  only Orc Warrior
  talk Frang##3153
  turnin Simple Parchment##2383 |goto Durotar 42.89,69.44
step
  only Druid
  talk Zureetha Fargaze##3145
  turnin Vile Familiars##1499 |goto Durotar 42.85,69.15
step
  only Troll Warrior
  talk Frang##3153
  turnin Simple Tablet##3065 |goto Durotar 42.89,69.44
step
  talk Foreman Thazz'ril##11378
  turnin Thazz'ril's Pick##6394 |goto Durotar 44.63,68.65
step
  talk Zureetha Fargaze##3145
  accept Report to Sen'jin Village##805 |goto Durotar 42.85,69.15
step
  talk Master Gadrin##3188
  turnin Report to Sen'jin Village##805 |goto Durotar 55.95,74.72
step
  talk Gar'Thok##3139
  turnin From The Wreckage....##825 |goto Durotar 51.95,43.5
step
  talk Rezlak##3293
  turnin Securing the Lines##835 |goto Durotar 46.37,22.94
step
  talk Margoz##3208
  turnin Skull Rock##827 |goto Durotar 56.41,20.04
step
  talk Margoz##3208
  accept Neeru Fireblade##829 |goto Durotar 56.41,20.04
step
  talk Neeru Fireblade##3216
  turnin Neeru Fireblade##829 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  note {travel}Eversong Woods
  goto Eversong Woods 38.21,20.83
]])
