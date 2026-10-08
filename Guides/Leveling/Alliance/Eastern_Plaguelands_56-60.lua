-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Eastern Plaguelands (56-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Pamela Redpath##10926
  accept Pamela's Doll##5149 |goto Eastern Plaguelands 31.15,77.98
step
  note Find Pamela's doll.
  collect Pamela's Doll##12885 |q 5149 |goto Eastern Plaguelands 31.15,77.98
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
  talk Smokey LaRue##11033
  accept That's Asking A Lot##6026 |goto Eastern Plaguelands 70.88,48.43
step
  note Smokey LaRue wants you to get 2 Thorium Bars, 1 Golden Rod, 8 Hi-Explosive Bombs, and 8 Unstable Triggers.
  collect Thorium Bar##12359 |q 6026 |goto Eastern Plaguelands 70.88,48.43
step
  only not completed(5401) not completed(5405) not haveq(5401) not haveq(5405)
  talk Duke Nicholas Zverenhoff##11039
  turnin Argent Dawn Commission##5503 |goto Eastern Plaguelands 71.63,50.09
step
  talk Smokey LaRue##11033
  turnin That's Asking A Lot##6026 |goto Eastern Plaguelands 70.88,48.43
step
  talk Smokey LaRue##11033
  accept When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  note Free 15 Darrowshire Spirits and return to Carlin Redpath.
  talk Darrowshire Spirit##11064 |q 5211 |goto Eastern Plaguelands 32.51,29.19
step
  note Travel to Plaguewood, northwest of Light's Hope. Destroy 8 Scourge Structures by using Smokey's Special Compound at the Mark of Detonation planted inside each building. Smokey has had the Ziggurats and Slaughterhouses marked.
  kill Scourge Structure##12247 |q 6041 |goto Eastern Plaguelands 28.01,17.75
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
  talk Carlin Redpath##11063
  turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 71.7,50.04
step
  talk Caretaker Alen##11038
  turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 69.93,53.72
step
  talk Smokey LaRue##11033
  turnin When Smokey Sings, I Get Violent##6041 |goto Eastern Plaguelands 70.88,48.43
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  turnin Of Forgotten Memories##5781 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  accept Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  note Travel to Northdale, in the northeastern region of the Eastern Plaguelands, and recover the Symbol of Lost Honor. Return to Tirion Fordring upon completion of your objective.
  collect Symbol of Lost Honor##14625 |q 5845 |goto Eastern Plaguelands 62.53,26.81
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  turnin Of Lost Honor##5845 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  talk Tirion Fordring##1855
  accept Of Love and Family##5846 |goto Eastern Plaguelands 5.16,35.57
step
  click Torn Scroll##177667
  accept Hameya's Plea##6024 |goto Eastern Plaguelands 22.9,72.96
step
  talk Caretaker Alen##11038
  accept The Restless Souls##5281 |goto Eastern Plaguelands 69.93,53.72
step
  only completed(5462)
  talk Leonid Barthalomew the Revered##11036
  accept Menethil's Gift##5463 |goto Eastern Plaguelands 71.89,48.29
step
  only completed(5464)
  talk Leonid Barthalomew the Revered##11036
  accept Soulbound Keepsake##5465 |goto Eastern Plaguelands 71.89,48.29
step
  only not completed(5504) not completed(5507) not haveq(5504) not haveq(5507)
  talk Quartermaster Miranda Breechlock##11536
  accept Mantles of the Dawn##5513 |goto Eastern Plaguelands 71.79,50.25
step
  only not completed(5504) not completed(5507) not haveq(5504) not haveq(5507)
  note Bring 10 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  collect 10 Argent Dawn Valor Token##12844 |q 5513 |goto Eastern Plaguelands 71.79,50.25
step
  only not completed(5521) not completed(5524) not haveq(5521) not haveq(5524)
  talk Quartermaster Miranda Breechlock##11536
  accept Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  only not completed(5521) not completed(5524) not haveq(5521) not haveq(5524)
  note Bring 25 Argent Dawn Valor Tokens to Quartermaster Breechlock at Light's Hope Chapel, Eastern Plaguelands.
  collect 25 Argent Dawn Valor Token##12844 |q 5517 |goto Eastern Plaguelands 71.79,50.25
step
  only completed(5522)
  talk Leonid Barthalomew the Revered##11036
  accept Betina Bigglezink##5531 |goto Eastern Plaguelands 71.89,48.29
step
  talk Huntsman Leopold##16132
  accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  talk Rohan the Assassin##16131
  accept Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  talk Korfax, Champion of the Light##16112
  accept Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  talk Dispatch Commander Metz##16212
  accept They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  note Dispatch Commander Metz at Light's Hope Chapel in the Eastern Plaguelands wants an Argent Dawn Valor Token.
  collect Argent Dawn Valor Token##12844 |q 9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Emmisary Whitebeard##17069
  accept Establishing New Outposts##9664 |goto Eastern Plaguelands 71.51,49.66
step
  note Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Whitebeard at Light's Hope Chapel.
  get Establishing New Outposts |q 9664 |goto Eastern Plaguelands 71.51,49.66
step
  only not completed(5504) not completed(5507) not haveq(5504) not haveq(5507)
  talk Quartermaster Miranda Breechlock##11536
  turnin Mantles of the Dawn##5513 |goto Eastern Plaguelands 71.79,50.25
step
  only not completed(5521) not completed(5524) not haveq(5521) not haveq(5524)
  talk Quartermaster Miranda Breechlock##11536
  turnin Chromatic Mantle of the Dawn##5517 |goto Eastern Plaguelands 71.79,50.25
step
  only completed(5522)
  talk Betina Bigglezink##11035
  turnin Betina Bigglezink##5531 |goto Eastern Plaguelands 71.66,49.94
step
  talk Dispatch Commander Metz##16212
  turnin They Call Me "The Rooster"##9141 |goto Eastern Plaguelands 71.28,48.04
step
  talk Emmisary Whitebeard##17069
  turnin Establishing New Outposts##9664 |goto Eastern Plaguelands 71.51,49.66
step
  only completed(8946)
  talk Anthion Harmon##16016
  accept Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  only completed(8946)
  note Bring 3 Dark Iron Bars, 20 Enchanted Leather, 3 Mooncloth and 4 Cured Rugged Hides to Anthion Harmon in the Eastern Plaguelands.
  collect 3 Dark Iron Bar##11371 |q 8947 |goto Eastern Plaguelands 26.11,11.3
step
  note Kill Infiltrator Hameya. Use his key on the Mound of Dirt behind the Undercroft.
  collect Hameya's Key##15767 |q 6024 |goto Eastern Plaguelands 61.96,11.11 |tip {dropsfrom}Infiltrator Hameya
step
  only completed(8946)
  talk Anthion Harmon##16016
  turnin Anthion's Strange Request##8947 |goto Eastern Plaguelands 26.11,11.3
step
  talk Egan##11140
  turnin The Restless Souls##5281 |goto Eastern Plaguelands 11.36,26.6
step
  note Huntsman Leopold at Light's Hope Chapel in the Eastern Plaguelands wants 30 Crypt Fiend Parts.
  collect Crypt Fiend Parts##22525 |q 9124 |goto Eastern Plaguelands 12.84,25.99 |tip {dropsfrom}Crypt Fiend, Crypt Walker, Crypt Horror
step
  only completed(5848)
  talk Tirion Fordring##1855
  accept Find Myranda##5861 |goto Eastern Plaguelands 5.16,35.57
step
  turnin Hameya's Plea##6024 |goto Eastern Plaguelands 23.58,73.79
step
  talk Huntsman Leopold##16132
  turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto Eastern Plaguelands 71.69,48.94
step
  only completed(5462)
  turnin Menethil's Gift##5463 |goto Stratholme - Dungeon -1,-1 |tip {turninat}Stratholme - Dungeon
step
  only completed(5464)
  talk Magistrate Marduke##11286
  turnin Soulbound Keepsake##5465 |goto Western Plaguelands 70.57,74.11 |tip {turninat}Western Plaguelands
step
  only completed(5848)
  talk Myranda the Hag##11872
  turnin Find Myranda##5861 |goto Western Plaguelands 50.79,77.85 |tip {turninat}Western Plaguelands
step
  only completed(6186)
  talk Highlord Bolvar Fordragon##1748
  accept Order Must Be Restored##6187 |goto Stormwind City 80.21,38.35
step
  only completed(8926,8931,8932,8933,8934,8935,8936,8937)
  talk Deliana##16013
  accept In Search of Anthion##8929 |goto Ironforge 43.53,52.64
step
  only completed(6186)
  note Assemble an army and travel to the Eastern Plaguelands. Launch a full assault on Nathanos Blightcaller and any Horde filth that may attempt to protect him.
  talk Nathanos Blightcaller##11878 |q 6187 |goto Eastern Plaguelands 22.23,63.51
step
  note Rohan the Assassin at Light's Hope Chapel in the Eastern Plaguelands wants 30 Bone Fragments.
  collect Bone Fragments##22526 |q 9126 |goto Western Plaguelands 37.61,58.49 |tip {dropsfrom}Skeletal Flayer, Skeletal Sorcerer, Skeletal Terror
step
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants 30 Dark Iron Scraps.
  collect Dark Iron Scraps##22528 |q 9131 |goto Searing Gorge 40.58,49.48 |tip {dropsfrom}Dark Iron Steamsmith, Dark Iron Slaver, Dark Iron Taskmaster
step
  only completed(6186)
  talk Highlord Bolvar Fordragon##1748
  turnin Order Must Be Restored##6187 |goto Stormwind City 80.21,38.35 |tip {turninat}Stormwind City
step
  only completed(8926,8931,8932,8933,8934,8935,8936,8937)
  talk Anthion Harmon##16016
  turnin In Search of Anthion##8929 |goto Eastern Plaguelands 26.11,11.3
step
  talk Rohan the Assassin##16131
  turnin Bonescythe Digs##9126 |goto Eastern Plaguelands 71.62,48.91
step
  talk Korfax, Champion of the Light##16112
  turnin Binding the Dreadnaught##9131 |goto Eastern Plaguelands 71.95,48.52
step
  talk Marlene Redpath##10927
  turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.57 |tip {turninat}Western Plaguelands
step
  only completed(5848)
  talk Myranda the Hag##11872
  accept Scarlet Subterfuge##5862 |goto Western Plaguelands 50.79,77.85
step
  only completed(5848)
  talk Highlord Taelan Fordring##1842
  turnin Scarlet Subterfuge##5862 |goto Western Plaguelands 42.02,14.79 |tip {turninat}Western Plaguelands
step
  talk Marlene Redpath##10927
  accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.57
step
  only completed(5848)
  talk Highlord Taelan Fordring##1842
  accept In Dreams##5944 |goto Western Plaguelands 42.02,14.79
step
  note Bring Joseph's Wedding Ring to Chromie.
  collect Joseph's Wedding Ring##12894 |q 5153 |goto Western Plaguelands 49.7,76.76 |tip {dropsfrom}Joseph Redpath's Monument
step
  talk Chromie##10667
  turnin A Strange Historian##5153 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  only completed(5848)
  talk Tirion Fordring##1855
  turnin In Dreams##5944 |goto Eastern Plaguelands 5.16,35.57
step
  only completed(5542) completed(5543) completed(5544)
  talk Artist Renfray##11936
  turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37 |tip {turninat}Western Plaguelands
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
  talk Carlin Redpath##11063
  turnin Brother Carlin##5210 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring Davil's Libram and Redpath's Shield to Carlin Redpath.
  collect Davil's Libram##12954 |q 5168 |goto Western Plaguelands 42.52,18.99
step
  note Bring the Skull of Horgus and the Shattered Sword of Marduk to Carlin Redpath at Light's Hope Chapel.
  collect Skull of Horgus##12956 |q 5181 |goto Eastern Plaguelands 44.34,41.18 |tip {dropsfrom}Horgus' Skull
step
  talk Carlin Redpath##11063
  turnin Heroes of Darrowshire##5168 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  note Bring 5 Resonating Skulls and the Mystic Crystal to Carlin Redpath in Eastern Plaguelands.
  collect 5 Resonating Skull##13155 |q 5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  turnin Marauders of Darrowshire##5206 |goto Eastern Plaguelands 71.7,50.04
step
  talk Carlin Redpath##11063
  accept Return to Chromie##5941 |goto Eastern Plaguelands 71.7,50.04
step
  talk Chromie##10667
  turnin Return to Chromie##5941 |goto Western Plaguelands 39.46,66.76 |tip {turninat}Western Plaguelands
step
  talk Chromie##10667
  accept The Battle of Darrowshire##5721 |goto Western Plaguelands 39.46,66.76
step
  note Place the Relic Bundle at the Darrowshire town square.
  talk Joseph Redpath##10936 |q 5721 |goto Eastern Plaguelands 33.62,78.46
step
  talk Pamela Redpath##10926
  turnin The Battle of Darrowshire##5721 |goto Eastern Plaguelands 31.15,77.98
step
  talk Pamela Redpath##10926
  accept Hidden Treasures##5942 |goto Eastern Plaguelands 31.15,77.98
step
  turnin Hidden Treasures##5942 |goto Eastern Plaguelands 30.92,77.78
]])
