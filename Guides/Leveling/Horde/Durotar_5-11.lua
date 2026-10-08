-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Durotar (5-11)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Silverpine Forest (11-20)",
}, [[
step
  note {fp}Shoja'my
  goto Durotar 51.99,41.84 |tip {vendor}
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
  only Warlock
  talk Ruzan##5765
  accept Vile Familiars##1485 |goto Durotar 42.59,69
step
  only Warlock
  note Bring 6 Vile Familiar Heads to Ruzan.
  collect 6 Vile Familiar Head##6487 |q 1485 |goto Durotar 44.24,55.54 |tip {dropsfrom}Vile Familiar
step
  only Shaman
  talk Canaga Earthcaller##5887
  accept Call of Earth##1516 |goto Durotar 42.4,69.17
step
  only Shaman
  note Bring 2 Felstalker Hooves to Canaga Earthcaller in the Valley of Trials.
  collect 2 Felstalker Hoof##6640 |q 1516 |goto Durotar 44.29,54.18 |tip {dropsfrom}Felstalker
step
  only Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1525 |goto Durotar 38.55,58.96
step
  only Shaman
  note Bring 1 Fire Tar and 1 Reagent Pouch to Telf Joolam in Durotar.
  collect 1 Fire Tar##5026 |q 1525 |goto The Barrens 55.03,26.65 |tip {dropsfrom}Razormane Water Seeker, Razormane Thornweaver, Razormane Geomancer
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
  talk Gornek##3143
  accept Wayward Weapons##97279 |goto Durotar 42.06,68.33
step
  note Collect 6 Abandoned Training Weapons, then return to Kzan Thornslash in the Den.
  collect 6 Abandoned Training Weapon##277653 |q 97279 |goto Durotar 44,64.6
step
  only Troll Warlock
  talk Gornek##3143
  accept Tainted Tablet##98575 |goto Durotar 42.06,68.33
step
  only Orc Mage
  talk Gornek##3143
  accept Glyphic Parchment##98576 |goto Durotar 42.06,68.33
step
  note Use the Foreman's Blackjack on Lazy Peons when they're sleeping. Wake up 5 peons, then return the Foreman's Blackjack to Foreman Thazz'ril in the Valley of Trials.
  use Lazy Peon##10556 |q 5441 |goto Durotar 44.67,65.45 |tip {useit}
step
  note Kill 10 Mottled Boars then return to Gornek at the Den.
  kill Mottled Boar##3098 |q 788 |goto Durotar 44.47,64.86
step
  note Kill 12 Vile Familiars.
  kill Vile Familiar##3101 |q 792 |goto Durotar 44.24,55.54
step
  collect Benedict's Chest##3239 |goto Durotar 59.26,57.65 |tip Loot the quest item here — it starts the quest.
  accept The Admiral's Orders##830 |goto Durotar 59.26,57.65
step
  talk Ukor##6786
  accept A Peon's Burden##2161 |goto Durotar 52.06,68.31
step
  only Tauren Druid
  talk Innkeeper Gryshka##6929
  accept Heeding the Call##5927 |goto Orgrimmar 54.1,68.41
step
  talk Innkeeper Gryshka##6929
  accept Doras the Wind Rider Master##6385 |goto Orgrimmar 54.1,68.41
step
  kill Ukorsbane##266851 |goto Durotar 49.76,56.6 |tip Loot the quest item here — it starts the quest.
  accept Ukor's Lost Pack##96876 |goto Durotar 49.76,56.6
step
  talk Lar Prowltusk##3140
  accept Thwarting Kolkar Aggression##786 |goto Durotar 54.44,74.35
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
  collect 4 Durotar Tiger Fur##4892 |q 817 |goto Durotar 64.63,84.83 |tip {dropsfrom}Durotar Tiger, Shal'ma
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
  only Mage
  talk Un'Thuwa##5880
  accept Ju-Ju Heaps##1884 |goto Durotar 56.31,75.11
step
  only Hunter
  talk Kali Remik##11814
  accept The Hunter's Path##6069 |goto Durotar 56.13,74.24
step
  talk Vel'rin Fang##3194
  accept Legging It##96821 |goto Durotar 55.96,73.93
step
  talk Pa'zula##266881
  accept A Pain in the Neck##96873 |goto Durotar 56.67,73.75
step
  note Pa'zula in Sen'jin Village wants you to collect 3 Luminous Residue. Luminous Residue can be obtained by disenchanting Hexed Pendants dropped by trolls in the Echo Isles.
  collect 3 Luminous Residue##247884 |q 96873 |goto Durotar 56.67,73.75
step
  talk Xar'Ti##7953
  accept Bloodtalon Matriarch##97223 |goto Durotar 55.28,75.49
step
  note Bring Eggs of the Bloodtalon Matriarch to Xar'Ti in Sen'jin Village.
  collect Bloodtalon Martriarch Eggs##277128 |q 97223 |goto Durotar 68.45,71.88 |tip {dropsfrom}Bloodtalon Matriarch
step
  talk Master Vornal##3304
  accept Forgotten Loa Idols##97225 |goto Durotar 55.94,74.39
step
  note Collect 8 Forgotten Loa Idols from the Echo Isles. Bring them to Master Gadrin in Sen'jin Village.
  collect 8 Forgotten Loa Idol##277135 |q 97225 |goto Durotar 67,84.7
step
  note Defeat Zalazane.
  kill Hexed Troll##3207 |q 826 |goto Durotar 67.7,84.01
step
  only Mage
  note Destroy 4 Ju-Ju Heaps, then return to Un'thuwa in Sen'jin Village.
  collect Ju-Ju Heap##102986 |q 1884 |goto Durotar 67.79,83.37
step
  only Troll Priest
  talk Ur'kyo##6018
  accept Hex of Weakness##5652 |goto Orgrimmar 35.59,87.82
step
  only Undead Priest
  talk Ur'kyo##6018
  accept Touch of Weakness##5662 |goto Orgrimmar 35.59,87.82
step
  talk Pal'juh##275811
  accept Lost in the Shadows##99123 |goto Durotar 46.29,78.71
step
  note Lar Prowltusk outside of Sen'jin Village wants you to destroy the 3 sets of Attack Plans held within Kolkar Crag.
  collect Attack Plan: Valley of Trials##3189 |q 786 |goto Durotar 49.81,81.29
step
  only Troll Priest
  talk Tai'jin##3706
  turnin In Favor of Spirituality##5649 |goto Durotar 54.26,42.93
step
  only Hunter
  talk Thotar##3171
  turnin The Hunter's Path##6069 |goto Durotar 51.85,43.49
step
  talk Orgnil Soulscar##3142
  turnin Report to Orgnil##823 |goto Durotar 52.24,43.15
step
  talk Gar'Thok##3139
  turnin The Admiral's Orders##830 |goto Durotar 51.95,43.5
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
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  accept Creature of the Void##1501 |goto Orgrimmar 48.25,45.28
step
  only Orc Warlock
  note Retrieve the Tablet of Verga for Gan'rul Bloodeye in Orgrimmar.
  collect Tablet of Verga##6535 |q 1501 |goto Durotar 51.62,9.76 |tip {dropsfrom}Burning Blade Stash
step
  only Warlock
  talk Ophek##3294
  accept Gan'rul's Summons##1506 |goto Durotar 54.37,41.29
step
  only Orc Rogue
  talk Kaplak##3170
  accept Therzok##1859 |goto Durotar 51.98,43.69
step
  only Shaman
  talk Swart##3173
  accept Call of Fire##2983 |goto Durotar 54.42,42.59
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
  only Hunter
  talk Thotar##3171
  accept Taming the Beast##6062 |goto Durotar 51.85,43.49
step
  only Tauren Hunter
  talk Thotar##3171
  accept The Hunter's Path##6067 |goto Durotar 51.85,43.49
step
  talk Brakk##265809
  accept The Great Outdoors##96604 |goto Durotar 52.06,47.33
step
  talk Turroc##266940
  accept For Honor##96822 |goto Durotar 53.97,42.6
step
  note Collect the Raider's Battleaxe, Raider's Bow, and Raider's Shield from the Tiragarde Keep outskirts, then return them to Turroc in Razor Hill.
  collect Raider's Bow##275713 |q 96822 |goto Durotar 57.3,57.9
step
  talk Cook Torka##3191
  accept This Fruit Could Bite Back##96825 |goto Durotar 51.11,42.45
step
  note Cook Torka in Razor Hill wants you to collect 8 Prickly Pear Fruit from the Razormane Grounds west of town.
  collect 8 Prickly Pear Fruit##275718 |q 96825 |goto Durotar 47.1,49.4
step
  talk Kamari##5811
  accept Beasts of Thunder Ridge##96875 |goto Orgrimmar 63.28,44.75
step
  note Kamari in Orgrimmar wants you to collect 5 Rough Lizard Hide from beasts in Thunder Ridge, along with 2 Cured Light Hides.
  collect 5 Rough Lizard Hide##275720 |q 96875 |goto Durotar 39.24,29.29 |tip {dropsfrom}Thunder Lizard, Lightning Hide
step
  talk Orgnil Soulscar##3142
  accept A Missing Hand##99048 |goto Durotar 52.24,43.15
step
  talk Heglan Shadeeye##275657
  accept Threat from Below##99049 |goto Durotar 58.64,45.67
step
  note Find signs of what attacked Heglan Shadeeye.
  collect Orcish Dagger##286012 |q 99049 |goto Durotar 58.9,44.5 |tip {dropsfrom}Abandoned Dagger
step
  talk Orgnil Soulscar##3142
  accept Threat from Below##99051 |goto Durotar 52.24,43.15
step
  note Collect 9 Naga Spinefins.
  collect 9 Naga Spinefin##286008 |q 99051 |goto Durotar 58.97,27.47 |tip {dropsfrom}Spitelash Scout, Spitelash Attendant
step
  talk Orgnil Soulscar##3142
  accept Threat from Below##99052 |goto Durotar 52.24,43.15
step
  note Kill the sea giant along Durotar's north coast and bring back proof of your accomplishment.
  collect Aggor's Belt##286009 |q 99052 |goto Durotar 58.53,16.39 |tip {dropsfrom}Aggor the Young
step
  only Troll Priest
  note Find Grunt Kor'ja and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude and then return to Tai'jin at Razor Hill.
  kill Grunt Kor'ja##12430 |q 5648 |goto Durotar 53.1,46.46
step
  only Hunter
  note Use the Taming Rod to tame a Dire Mottled Boar. Practice your skills, then return the Taming Rod to Thotar in Razor Hill.
  use Dire Mottled Boar##3099 |q 6062 |goto Durotar 51.22,44.95 |tip {useit}
step
  note Kill 4 Razormane Quilboars, 4 Razormane Scouts, 4 Razormane Dustrunners and 4 Razormane Battleguards for Gar'Thok at Razor Hill.
  kill Razormane Quilboar##3111 |q 837 |goto Durotar 47.6,48.8
step
  note Sit near Brakk's Basic Campfire by typing /sit in the chat window and wait until you receive the Boosted Rest buff.
  collect Basic Campfire##450005 |q 96604 |goto Durotar 52.09,47.39
step
  talk Nazgrel##3230
  turnin The Admiral's Orders##831 |goto Orgrimmar 32.3,35.75 |tip {turninat}Orgrimmar
step
  talk Eitrigg##3144
  accept The New Horde##787 |goto Orgrimmar 34.28,39.35
step
  talk Misha Tor'kren##3193
  accept Lost But Not Forgotten##816 |goto Durotar 43.1,30.24
step
  note Bring a sign of Kron's fate to Misha Tor'kren at the farmstead northwest of Razor Hill.
  collect Kron's Amulet##4891 |q 816 |goto Durotar 35.29,46.04 |tip {dropsfrom}Dreadmaw Crocolisk, Corrupted Dreadmaw Crocolisk
step
  only Shaman
  talk Searn Firewarder##5892
  accept Call of Fire##1522 |goto Orgrimmar 37.96,37.73
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5660 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  only Undead Priest
  talk Aelthalyste##4606
  turnin Touch of Weakness##5662 |goto Undercity 49.26,17.12 |tip {turninat}Undercity
step
  talk Rezlak##3293
  accept Winds in the Desert##834 |goto Durotar 46.37,22.94
step
  note Retrieve 5 Sacks of Supplies and return them to Rezlak near Orgrimmar.
  collect 5 Sack of Supplies##4918 |q 834 |goto Durotar 49.63,29.67 |tip {dropsfrom}Stolen Supply Sack
step
  kill Halikor##266852 |goto Durotar 41.95,24.67 |tip Loot the quest item here — it starts the quest.
  accept Halikor's Hoof##96877 |goto Durotar 41.95,24.67
step
  talk Rezlak##3293
  accept Stormy Potential##97282 |goto Durotar 46.37,22.94
step
  note Bring 5 Charged Thunder Lizard Organs to Rezlak near Drygulch Ravine.
  collect 5 Charged Thunder Lizard Organ##277665 |q 97282 |goto Durotar 39.24,29.29 |tip {dropsfrom}Thunder Lizard, Lightning Hide
step
  talk Rhinag##3190
  accept Need for a Cure##812 |goto Durotar 41.54,18.6
step
  note Find Kor'ghan in Orgrimmar and get the Venomtail Antidote. Then bring the antidote to Rhinag near the northwestern border of Durotar.
  collect Venomtail Antidote##4904 |q 812 |goto Orgrimmar 47.24,53.58 |tip {dropsfrom}Kor'ghan
step
  only Mage
  talk Thurston Xane##3049
  accept Speak with Un'thuwa##1883 |goto Thunder Bluff 25.18,20.96
step
  only Tauren Druid
  talk Turak Runetotem##3033
  turnin Heeding the Call##5927 |goto Thunder Bluff 76.48,27.22 |tip {turninat}Thunder Bluff
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##2983 |goto The Barrens 56.03,19.89 |tip {turninat}The Barrens
step
  talk Kargal Battlescar##3337
  turnin Conscript of the Horde##840 |goto The Barrens 62.26,19.38 |tip {turninat}The Barrens
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##1522 |goto The Barrens 56.03,19.89 |tip {turninat}The Barrens
step
  kill Gazz'uz##3204 |goto Durotar 52.61,8.82 |tip Loot the quest item here — it starts the quest.
  accept Burning Shadows##832 |goto Durotar 52.61,8.82
step
  only Tauren Hunter
  talk Sian'dur##3407
  accept The Hunter's Path##6066 |goto Orgrimmar 67.96,17.8
step
  only Hunter
  talk Sian'dur##3407
  accept The Hunter's Path##6068 |goto Orgrimmar 67.96,17.8
step
  talk Ug'thok##10266
  accept This Is Spinal Axe##96874 |goto Orgrimmar 80.77,23.7
step
  note Ug'thok in Orgrimmar wants you to collect 5 Weathered Spines from beasts in Thunder Ridge, along with 5 Rough Grinding Stones.
  collect 5 Weathered Spine##275719 |q 96874 |goto Durotar 39.24,29.29 |tip {dropsfrom}Thunder Lizard, Lightning Hide
step
  kill Dustwind Storm Witch##3118 |goto Durotar 51.74,22.35 |tip Loot the quest item here — it starts the quest.
  accept A Simmering Storm##97281 |goto Durotar 51.74,22.35
step
  only Troll Warlock
  talk Nartok##3156
  turnin Tainted Tablet##98575 |goto Durotar 40.65,68.52
step
  only Orc Mage
  talk Mai'ah##5884
  turnin Glyphic Parchment##98576 |goto Durotar 42.51,69.04
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
  turnin The New Horde##787 |goto Durotar 42.06,68.33
step
  talk Gornek##3143
  turnin Your Place In The World##4641 |goto Durotar 42.06,68.33
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin The Hunter's Path##6067 |goto Mulgore 46.93,59.65 |tip {turninat}Mulgore
step
  only Tauren Hunter
  talk Yaw Sharpmane##3065
  turnin The Hunter's Path##6066 |goto Mulgore 46.93,59.65 |tip {turninat}Mulgore
step
  talk Foreman Thazz'ril##11378
  turnin Lazy Peons##5441 |goto Durotar 44.63,68.65
step
  only Warlock
  talk Ruzan##5765
  turnin Vile Familiars##1485 |goto Durotar 42.59,69
step
  only Shaman
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1516 |goto Durotar 42.4,69.17
step
  talk Doras##3310
  turnin Doras the Wind Rider Master##6385 |goto Orgrimmar 45.12,63.89 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Telf Joolam##5900
  turnin Call of Fire##1525 |goto Durotar 38.55,58.96
step
  talk Kzan Thornslash##3159
  turnin Wayward Weapons##97279 |goto Durotar 40.47,68
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
  only Warlock
  talk Ruzan##5765
  accept Vile Familiars##1499 |goto Durotar 42.59,69
step
  only Shaman
  talk Canaga Earthcaller##5887
  accept Call of Earth##1517 |goto Durotar 42.4,69.17
step
  only Shaman
  talk Telf Joolam##5900
  accept Call of Fire##1526 |goto Durotar 38.55,58.96
step
  only Shaman
  note Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.
  collect Glowing Ember##6655 |q 1526 |goto Durotar 38.72,58.29 |tip {dropsfrom}Minor Manifestation of Fire, Manifestation of Flames
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
  only Troll Shaman
  talk Gornek##3143
  accept Rune-Inscribed Tablet##3084 |goto Durotar 42.06,68.33
step
  only Troll Priest
  talk Gornek##3143
  accept Hallowed Tablet##3085 |goto Durotar 42.06,68.33
step
  only Troll Mage
  talk Gornek##3143
  accept Glyphic Tablet##3086 |goto Durotar 42.06,68.33
step
  only Orc Hunter
  talk Gornek##3143
  accept Etched Parchment##3087 |goto Durotar 42.06,68.33
step
  only Orc Rogue
  talk Gornek##3143
  accept Encrypted Parchment##3088 |goto Durotar 42.06,68.33
step
  only Orc Shaman
  talk Gornek##3143
  accept Rune-Inscribed Parchment##3089 |goto Durotar 42.06,68.33
step
  only Orc Warlock
  talk Gornek##3143
  accept Tainted Parchment##3090 |goto Durotar 42.06,68.33
step
  talk Galgar##9796
  accept Galgar's Cactus Apple Surprise##4402 |goto Durotar 42.73,67.23
step
  note Bring Galgar 10 Cactus Apples. You remember him saying that they could be found near cactuses.
  collect Cactus Apple##11583 |q 4402 |goto Durotar 44.04,63.02
step
  talk Doras##3310
  accept Return to the Crossroads.##6386 |goto Orgrimmar 45.12,63.89
step
  talk Foreman Thazz'ril##11378
  accept Thazz'ril's Pick##6394 |goto Durotar 44.63,68.65
step
  note Bring Thazz'ril's Pick to Foreman Thazz'ril.
  collect Thazz'ril's Pick##16332 |q 6394 |goto Durotar 43.73,53.79
step
  talk Ukor##6786
  turnin Ukor's Lost Pack##96876 |goto Durotar 52.06,68.31
step
  note Kill 10 Kul Tiras Sailors, 8 Kul Tiras Marines and Lieutenant Benedict and return to Gar'Thok in Razor Hill.
  kill Kul Tiras Sailor##3128 |q 784 |goto Durotar 57.39,57.21
step
  note Kill 6 Ridgeshade Creepers and 6 Ridgeshade Lurkers in southern Durotar, then report to Gar'thok in Razor Hill.
  kill Ridgeshade Creeper##266850 |q 96821 |goto Durotar 51.29,55.93
step
  talk Lar Prowltusk##3140
  turnin Thwarting Kolkar Aggression##786 |goto Durotar 54.44,74.35
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
  talk Master Vornal##3304
  turnin Lost in the Shadows##99123 |goto Durotar 55.94,74.39
step
  talk Master Gadrin##3188
  turnin Zalazane##826 |goto Durotar 55.95,74.72
step
  only Mage
  talk Un'Thuwa##5880
  turnin Speak with Un'thuwa##1883 |goto Durotar 56.31,75.11
step
  only Mage
  talk Un'Thuwa##5880
  turnin Ju-Ju Heaps##1884 |goto Durotar 56.31,75.11
step
  talk Pa'zula##266881
  turnin A Pain in the Neck##96873 |goto Durotar 56.67,73.75
step
  talk Xar'Ti##7953
  turnin Bloodtalon Matriarch##97223 |goto Durotar 55.28,75.49
step
  talk Master Gadrin##3188
  turnin Forgotten Loa Idols##97225 |goto Durotar 55.95,74.72
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5652 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Troll Priest
  talk Ur'kyo##6018
  turnin Hex of Weakness##5654 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only Shaman
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1517 |goto Durotar 44.03,76.2
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
  talk Gar'Thok##3139
  turnin Legging It##96821 |goto Durotar 51.95,43.5
step
  talk Turroc##266940
  turnin For Honor##96822 |goto Durotar 53.97,42.6
step
  talk Cook Torka##3191
  turnin This Fruit Could Bite Back##96825 |goto Durotar 51.11,42.45
step
  talk Neeru Fireblade##3216
  turnin Burning Shadows##832 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  only Orc Rogue
  talk Therzok##6446
  turnin Therzok##1859 |goto Orgrimmar 42.73,53.55 |tip {turninat}Orgrimmar
step
  talk Gar'Thok##3139
  turnin Encroachment##837 |goto Durotar 51.95,43.5
step
  talk Brakk##265809
  turnin The Great Outdoors##96604 |goto Durotar 52.06,47.33
step
  talk Kamari##5811
  turnin Beasts of Thunder Ridge##96875 |goto Orgrimmar 63.28,44.75 |tip {turninat}Orgrimmar
step
  talk Kamari##5811
  turnin Halikor's Hoof##96877 |goto Orgrimmar 63.28,44.75 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Thotar##3171
  turnin Taming the Beast##6062 |goto Durotar 51.85,43.49
step
  only Hunter
  talk Thotar##3171
  turnin The Hunter's Path##6068 |goto Durotar 51.85,43.49
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  turnin Creature of the Void##1501 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  only Warlock
  talk Gan'rul Bloodeye##5875
  turnin Gan'rul's Summons##1506 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  talk Heglan Shadeeye##275657
  turnin A Missing Hand##99048 |goto Durotar 58.64,45.67
step
  talk Orgnil Soulscar##3142
  turnin Threat from Below##99049 |goto Durotar 52.24,43.15
step
  talk Orgnil Soulscar##3142
  turnin Threat from Below##99051 |goto Durotar 52.24,43.15
step
  talk Orgnil Soulscar##3142
  turnin Threat from Below##99052 |goto Durotar 52.24,43.15
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
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  accept The Binding##1504 |goto Orgrimmar 48.25,45.28
step
  only Orc Warlock
  note Using the Glyphs of Summoning, summon and subdue a voidwalker, then return the Glyphs of Summoning to Gan'rul Bloodeye in Orgrimmar.
  use Summoned Voidwalker##5676 |q 1504 |tip {useit}
step
  only Hunter
  talk Thotar##3171
  accept Taming the Beast##6083 |goto Durotar 51.85,43.49
step
  talk Brakk##265809
  accept Camping 101: Cooking##96655 |goto Durotar 52.06,47.33
step
  note Speak with Cook Torka in Razor Hill to learn to become a cook.
  talk Cook Torka##3191 |q 96655 |goto Durotar 51.11,42.45
step
  talk Misha Tor'kren##3193
  turnin Lost But Not Forgotten##816 |goto Durotar 43.1,30.24
step
  talk Rezlak##3293
  turnin A Simmering Storm##97281 |goto Durotar 46.37,22.94
step
  talk Rezlak##3293
  turnin Stormy Potential##97282 |goto Durotar 46.37,22.94
step
  talk Rezlak##3293
  turnin Winds in the Desert##834 |goto Durotar 46.37,22.94
step
  talk Zargh##3489
  turnin Return to the Crossroads.##6386 |goto The Barrens 52.62,29.84 |tip {turninat}The Barrens
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
  talk Ug'thok##10266
  turnin This Is Spinal Axe##96874 |goto Orgrimmar 80.77,23.7 |tip {turninat}Orgrimmar
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
  turnin Encrypted Tablet##3083 |goto Durotar 41.28,68
step
  only Troll Shaman
  talk Shikrik##3157
  turnin Rune-Inscribed Tablet##3084 |goto Durotar 42.39,69
step
  only Troll Priest
  talk Ken'jai##3707
  turnin Hallowed Tablet##3085 |goto Durotar 42.36,68.81
step
  only Troll Mage
  talk Mai'ah##5884
  turnin Glyphic Tablet##3086 |goto Durotar 42.51,69.04
step
  only Orc Hunter
  talk Jen'shan##3154
  turnin Etched Parchment##3087 |goto Durotar 42.84,69.33
step
  only Orc Warlock
  talk Nartok##3156
  turnin Tainted Parchment##3090 |goto Durotar 40.65,68.52
step
  only Orc Shaman
  talk Shikrik##3157
  turnin Rune-Inscribed Parchment##3089 |goto Durotar 42.39,69
step
  talk Gornek##3143
  turnin Sting of the Scorpid##789 |goto Durotar 42.06,68.33
step
  only Orc Rogue
  talk Rwag##3155
  turnin Encrypted Parchment##3088 |goto Durotar 41.28,68
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
  only Warlock
  talk Zureetha Fargaze##3145
  turnin Vile Familiars##1499 |goto Durotar 42.85,69.15
step
  only Shaman
  turnin Call of Fire##1526 |goto Durotar 38.96,58.22
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
  only Shaman
  click Brazier of the Dormant Flame##61934
  accept Call of Fire##1527 |goto Durotar 38.96,58.22
step
  click Lost Journal##654925
  accept The Adventurer##96652 |goto Durotar 42.82,69.14
step
  talk Master Gadrin##3188
  turnin Report to Sen'jin Village##805 |goto Durotar 55.95,74.72
step
  only Hunter
  note Use the Taming Rod to tame a Surf Crawler. Practice your skills, then return the Taming Rod to Thotar at Razor Hill.
  use Surf Crawler##3107 |q 6083 |goto Durotar 63.9,78.79 |tip {useit}
step
  talk Gar'Thok##3139
  turnin From The Wreckage....##825 |goto Durotar 51.95,43.5
step
  talk Brakk##265809
  turnin The Adventurer##96652 |goto Durotar 52.06,47.33
step
  talk Cook Torka##3191
  turnin Camping 101: Cooking##96655 |goto Durotar 51.11,42.45
step
  only Hunter
  talk Thotar##3171
  turnin Taming the Beast##6083 |goto Durotar 51.85,43.49
step
  only Orc Warlock
  talk Gan'rul Bloodeye##5875
  turnin The Binding##1504 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Thotar##3171
  accept Taming the Beast##6082 |goto Durotar 51.85,43.49
step
  only Hunter
  note Use the Taming Rod to tame an Armored Scorpid. Practice your skills, then return to Thotar at Razor Hill.
  use Armored Scorpid##3126 |q 6082 |goto Durotar 44.57,35.72 |tip {useit}
step
  talk Rezlak##3293
  turnin Securing the Lines##835 |goto Durotar 46.37,22.94
step
  talk Margoz##3208
  turnin Skull Rock##827 |goto Durotar 56.41,20.04
step
  only Shaman
  talk Kranal Fiss##5907
  turnin Call of Fire##1527 |goto The Barrens 56.03,19.89 |tip {turninat}The Barrens
step
  talk Margoz##3208
  accept Neeru Fireblade##829 |goto Durotar 56.41,20.04
step
  talk Neeru Fireblade##3216
  turnin Neeru Fireblade##829 |goto Orgrimmar 49.47,50.59 |tip {turninat}Orgrimmar
step
  only Hunter
  talk Thotar##3171
  turnin Taming the Beast##6082 |goto Durotar 51.85,43.49
step
  only Hunter
  talk Thotar##3171
  accept Training the Beast##6081 |goto Durotar 51.85,43.49
step
  only Hunter
  talk Ormak Grimshot##3352
  turnin Training the Beast##6081 |goto Orgrimmar 66.05,18.53 |tip {turninat}Orgrimmar
step
  note {travel}Silverpine Forest
  goto Silverpine Forest 44.2,39.81
]])
