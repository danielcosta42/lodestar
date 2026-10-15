-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Eastern Plaguelands (55-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Redridge Mountains (54-60)",
	rev = "05a8db9c",
}, [[
step
  ding 53
step
  talk Pamela Redpath##10926
  accept Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  note Find Pamela's doll.
  collect Pamela's Doll##12885 |q 5149 |goto Eastern Plaguelands 32.58,79.56 |tip Combine Pamela's Doll's Head, Pamela's Doll's Left Side, Pamela's Doll's Right Side.
step
  talk Pamela Redpath##10926
  turnin Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Auntie Marlene##5152 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Uncle Carlin##5241 |goto Eastern Plaguelands 31.15,77.98
step
  note {fp}Khaelyn Steelwing
  goto Eastern Plaguelands 71.81,49.6 |tip {vendor}
step
  note Find Carlin Redpath.
  talk Carlin Redpath##11063
  turnin Uncle Carlin##5241 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 71.7,50.04
step
  only not completed(5401) not completed(5405) not haveq(5401) not haveq(5405)
  talk Duke Nicholas Zverenhoff##11039
  accept Argent Dawn Commission##5503 |goto Eastern Plaguelands 71.63,50.09
step
  talk Caretaker Alen##11038
  accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  only not completed(5401) not completed(5405) not haveq(5401) not haveq(5405)
  talk Duke Nicholas Zverenhoff##11039
  turnin Argent Dawn Commission##5503 |goto Eastern Plaguelands 71.63,50.09
step
  note Free 15 Darrowshire Spirits and return to Carlin Redpath.
  talk Darrowshire Spirit##11064 |q 5211 |goto Eastern Plaguelands 32.51,29.19
step
  talk Augustus the Touched##12384
  accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 11.36,26.37
step
  note Bring Augustus' Receipt Book to Augustus the Touched in Terrordale.
  collect Augustus' Receipt Book##15884 |q 6164 |goto Eastern Plaguelands 14.04,24.22
step
  talk Augustus the Touched##12384
  turnin Augustus' Receipt Book##6164 |goto Eastern Plaguelands 11.36,26.37
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  accept Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  note Listen to what Tirion Fordring has to say.
  talk Tirion Fordring##1855 |q 5742 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  turnin Redemption##5742 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  accept Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  note Travel to the Undercroft - at the southernmost section of the Eastern Plaguelands - and recover Taelan's Hammer. Return to Tirion Fordring upon completion of your objective.
  collect Taelan's Hammer##14613 |q 5781 |goto Eastern Plaguelands 23.85,74.22 |tip {dropsfrom}Mercutio Filthgorger
step
  note Bring Zaeldarr's Head to Caretaker Alen at Light's Hope Chapel.
  collect Zaeldarr's Head##15785 |q 6021 |goto Eastern Plaguelands 23.07,72.63 |tip {dropsfrom}Zaeldarr the Outcast
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  turnin Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  talk Carlin Redpath##11063
  turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 71.7,50.04
step
  talk Caretaker Alen##11038
  turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  only completed(6026) level>=54
  talk Smokey LaRue##11033
  accept When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  accept Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(6026) haveq(6041)
  note Travel to Plaguewood, northwest of Light's Hope. Destroy 8 Scourge Structures by using Smokey's Special Compound at the Mark of Detonation planted inside each building. Smokey has had the Ziggurats and Slaughterhouses marked.
  kill Scourge Structure##12247 |q 6041 |goto Eastern Plaguelands 28.01,17.75
step
  only completed(5542) completed(5543) completed(5544)
  note Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
  collect Symbol of Lost Honor##14625 |q 5845 |goto Eastern Plaguelands 62.53,26.81
step
  only completed(6026) haveq(6041)
  talk Smokey LaRue##11033
  turnin When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  turnin Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  accept Of Love and Family##5846 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5848)
  talk Tirion Fordring##1855
  accept Find Myranda##5861 |goto Eastern Plaguelands 5.16,35.57
step
  only level>=54
  click Torn Scroll##177667
  accept Hameya's Plea##6024 |goto Eastern Plaguelands 22.9,72.96
step
  only level>=55
  talk Caretaker Alen##11038
  accept The Restless Souls##5281 |goto Eastern Plaguelands 69.93,53.72
step
  only level>=55
  talk Huntsman Leopold##16132
  accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  only level>=55
  talk Rohan the Assassin##16131
  accept Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  only level>=55
  talk Korfax, Champion of the Light##16112
  accept Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  only level>=55
  talk Emmisary Whitebeard##17069
  accept Establishing New Outposts##9664 |goto Eastern Plaguelands 71.51,49.66
step
  only haveq(9664)
  note Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Whitebeard at Light's Hope Chapel.
  goto Eastern Plaguelands 59.04,39.41 |q 9664/2
  goto Eastern Plaguelands 49.25,18.2 |q 9664/3
  goto Eastern Plaguelands 18.16,25.06 |q 9664/4
  goto Eastern Plaguelands 34.09,64.1 |q 9664
step
  only haveq(9664)
  talk Emmisary Whitebeard##17069
  turnin Establishing New Outposts##9664 |goto Eastern Plaguelands 71.51,49.66
step
  only haveq(6024)
  note Kill Infiltrator Hameya. Use his key on the Mound of Dirt behind the Undercroft.
  collect Hameya's Key##15767 |q 6024 |goto Eastern Plaguelands 61.96,11.11 |tip {dropsfrom}Infiltrator Hameya
step
  only haveq(9126)
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
  collect 30 Bone Fragments##22526 |q 9126 |goto Eastern Plaguelands 23.27,27.39 |tip {dropsfrom}Scourge Soldier, Cursed Mage, Scourge Warder
step
  only haveq(5281)
  note Find Egan. You only know that he was last seen around Stratholme.
  talk Egan##11140
  turnin The Restless Souls##5281 |goto Eastern Plaguelands 11.36,26.6
step
  only haveq(9124)
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
  collect 30 Crypt Fiend Parts##22525 |q 9124 |goto Eastern Plaguelands 12.84,25.99 |tip {dropsfrom}Crypt Fiend, Crypt Walker, Crypt Horror
step
  only haveq(6024)
  turnin Hameya's Plea##6024 |goto Eastern Plaguelands 23.58,73.79
step
  only haveq(9124)
  talk Huntsman Leopold##16132
  turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  only haveq(9126)
  talk Rohan the Assassin##16131
  turnin Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  only completed(5464) level>=57
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 71.89,48.29
step
  only completed(5522) level>=57
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  only completed(5522) haveq(5531)
  note Bring the Frozen Eggs to Betina Bigglezink.
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  only haveq(3461)
  note Return Tymor's Drawing Kit to him in Ironforge.
  talk Tymor##8507
  turnin Return to Tymor##3461 |goto Ironforge 30.96,4.83 |tip {turninat}Ironforge
step
  only completed(8926,8931,8932,8933,8934,8935,8936,8937) level>=58
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  only completed(5464) haveq(5465)
  note Return to Magistrate Marduke in Caer Darrow. Show him the Soulbound Keepsake.
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11 |tip {turninat}Western Plaguelands
step
  only completed(5542) completed(5543) completed(5544)
  note Travel to island of Caer Darrow, in the south-central region of the Plaguelands, and look for any clues as to the whereabouts of the painting.
  talk Artist Renfray##11936
  turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37 |tip {turninat}Western Plaguelands
step
  only completed(5848)
  note Travel to Uther's Tomb, located in the southern Plaguelands. Show Myranda the Hag Tirion's Gift.
  talk Myranda the Hag##11872
  turnin Find Myranda##5861 |goto Western Plaguelands 50.79,77.85 |tip {turninat}Western Plaguelands
step
  only completed(5848)
  talk Myranda the Hag##11872
  accept Scarlet Subterfuge##5862 |goto Western Plaguelands 50.79,77.85
step
  note Speak with Marlene, south of the Ruins of Andorhal.
  talk Marlene Redpath##10927
  turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.57 |tip {turninat}Western Plaguelands
step
  talk Marlene Redpath##10927
  accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.57
step
  note Bring Joseph's Wedding Ring to Chromie.
  collect Joseph's Wedding Ring##12894 |q 5153 |goto Western Plaguelands 49.7,76.76 |tip {dropsfrom}Joseph Redpath's Monument
step
  talk Chromie##10667
  turnin A Strange Historian##5153 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  talk Chromie##10667
  accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76
step
  note Bring the Annals of Darrowshire to Chromie in Andorhal.
  collect Annals of Darrowshire##12900 |q 5154 |goto Western Plaguelands 43.37,69.51 |tip {dropsfrom}Musty Tome
step
  talk Chromie##10667
  turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  talk Chromie##10667
  accept Brother Carlin##5210 |goto Western Plaguelands 39.46,66.76
step
  only completed(5848)
  note Speak to Myranda to gain the Scarlet Illusion. Travel to Hearthglen while under the Scarlet Illusion and deliver Tirion's Gift to Highlord Taelan Fordring.
  talk Highlord Taelan Fordring##1842
  turnin Scarlet Subterfuge##5862 |goto Western Plaguelands 42.02,14.79 |tip {turninat}Western Plaguelands
step
  only completed(5848)
  talk Highlord Taelan Fordring##1842
  accept In Dreams##5944 |goto Western Plaguelands 42.02,14.79
step
  only completed(5848)
  note Escort Taelan Fordring out of Hearthglen.
  goto Western Plaguelands 53.86,24.32 |tip Redemption?
step
  only completed(8926,8931,8932,8933,8934,8935,8936,8937) haveq(8929)
  note Use the Extra-Dimensional Ghost Revealer at the entrance to Stratholme and speak with the ghost of Anthion Harmon.
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
step
  only completed(5848)
  talk Tirion Fordring##1855
  turnin In Dreams##5944 |goto Eastern Plaguelands 5.16,35.57
step
  note Bring the Extended Annals of Darrowshire to Carlin Redpath in Eastern Plaguelands.
  talk Carlin Redpath##11063
  turnin Brother Carlin##5210 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
  collect Shattered Sword of Marduk##12957 |q 5181/2 |goto Eastern Plaguelands 46.86,55.43
  collect Skull of Horgus##12956 |q 5181 |goto Eastern Plaguelands 44.34,41.18 |tip {dropsfrom}Horgus' Skull
step
  talk Carlin Redpath##11063
  turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  only haveq(9131)
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
  collect 30 Dark Iron Scraps##22528 |q 9131 |goto Searing Gorge 40.58,49.48 |tip {dropsfrom}Dark Iron Steamsmith, Dark Iron Slaver, Dark Iron Taskmaster
step
  only haveq(9131)
  talk Korfax, Champion of the Light##16112
  turnin Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  note Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
  collect Davil's Libram##12954 |q 5168/1 |goto Western Plaguelands 42.52,18.99
  collect Redpath's Shield##12955 |q 5168 |goto Western Plaguelands 63.79,57.19
step
  talk Carlin Redpath##11063
  turnin Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring 5 Resonating Skulls and the Mystic Crystal to Carlin Redpath in Eastern Plaguelands.
  collect 5 Resonating Skull##13155 |q 5206 |goto Eastern Plaguelands 71.7,50.04 |tip Crafted or bought.
step
  talk Carlin Redpath##11063
  turnin Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Return to Chromie##5941 |goto Eastern Plaguelands 71.7,50.04
step
  note Take the Bundle of Relics to Chromie in Andorhal.
  talk Chromie##10667
  turnin Return to Chromie##5941 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  only level>=55
  talk Chromie##10667
  accept The Battle of Darrowshire##5721 |goto Western Plaguelands 39.46,66.76
step
  only haveq(5721)
  note Place the Relic Bundle at the Darrowshire town square.
  talk Joseph Redpath##10936 |q 5721 |goto Eastern Plaguelands 33.62,78.46
step
  only haveq(5721)
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 31.15,77.98
step
  only completed(5721)
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 31.15,77.98
step
  only haveq(5942)
  note Bring Joseph's Key to Joseph's Chest.
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 30.92,77.78
step
  note {travel}Redridge Mountains
  goto Redridge Mountains 10.64,71.24
]])
