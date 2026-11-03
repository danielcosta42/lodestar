-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Ashenvale (20-27)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Stonetalon Mountains (19-26)",
	rev = "a0f5b0ed",
}, [[
step
  ding 19
step
  note {fp}Andruk
  goto Ashenvale 12.24,33.8 |tip {vendor}
step
  talk Marukai##12719
  accept Naga at the Zoram Strand##6442 |goto Ashenvale 11.69,34.91
step
  note Bring 20 Wrathtail Heads to Marukai along the Zoram Strand.
  collect 20 Wrathtail Head##5490 |q 6442 |goto Ashenvale 10.48,29.74 |tip {dropsfrom}Wrathtail Razortail, Wrathtail Wave Rider, Wrathtail Sea Witch
step
  talk Marukai##12719
  turnin Naga at the Zoram Strand##6442 |goto Ashenvale 11.69,34.91
step
  talk Va'xug Firefure##267214
  accept Never Coming Back##98251 |goto Ashenvale 40.46,61.42
step
  talk Va'xug Firefure##267214
  accept A Void Path##98252 |goto Ashenvale 40.46,61.42
step
  note Show Va'xug's Eye of Kilrogg the way back to the main Ashenvale road.
  talk Eye of Kilrogg##271181
  turnin A Void Path##98252 |goto Ashenvale 38.27,58.41
step
  note Kill 6 Shadowhorn Stag and 6 Ashenvale Bear and return to Va'xug Firefure northwest of Fallen Sky Lake.
  kill Ashenvale Bear##3809 |q 98251/2 |goto Ashenvale 45.14,61.34
  kill Shadowhorn Stag##3817 |q 98251 |goto Ashenvale 46.5,61.25
step
  talk Va'xug Firefure##267214
  turnin Never Coming Back##98251 |goto Ashenvale 40.46,61.42
step
  talk Je'neu Sancrea##12736
  accept The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  only level>=20
  talk Muglash##12717
  accept Vorsha the Lasher##6641 |goto Ashenvale 12.06,34.63
step
  only haveq(6641)
  note Keep Muglash safe as he travels to the brazier. Help him by putting the brazier out, then protect him as you fight against the Naga.
  goto Ashenvale 9.59,27.58 |tip Defeat Vorsha the Lasher
step
  only haveq(6641)
  talk Warsong Runner##12863
  turnin Vorsha the Lasher##6641 |goto Ashenvale 12.22,34.22
step
  only level>=21
  talk Karang Amakkar##12757
  accept Between a Rock and a Thistlefur##216 |goto Ashenvale 11.9,34.54
step
  talk Mitsuwa##12721
  accept Troll Charm##6462 |goto Ashenvale 11.65,34.85
step
  note Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale.
  collect 20 Sapphire of Aku'Mai##16784 |q 6563 |goto Ashenvale 13.59,13.14
step
  only haveq(216)
  note Take down 8 Thistlefur Avengers and 8 Thistlefur Shaman; most are located east of Zoram Strand in Thistlefur Village. Once completed, return to Karang Amakkar at Zoram'gar Outpost, Ashenvale.
  kill Thistlefur Shaman##3924 |q 216/2 |goto Ashenvale 34.08,38.44
  kill Thistlefur Avenger##3925 |q 216 |goto Ashenvale 36.71,36.96
step
  note Bring 8 Troll Charms to Mitsuwa at the Zoram'gar Outpost.
  collect 8 Troll Charm##16602 |q 6462 |goto Ashenvale 40.86,33.64 |tip {dropsfrom}Troll Chest
step
  talk Ruul Snowhoof##12818
  accept Freedom to Ruul##6482 |goto Ashenvale 41.53,34.49
step
  note Escort Ruul, then speak with Yama Snowhoof in Splintertree Post.
  goto Ashenvale 38.53,37.32 |tip Escort Ruul from the Thistlefurs.
step
  only haveq(216)
  talk Karang Amakkar##12757
  turnin Between a Rock and a Thistlefur##216 |goto Ashenvale 11.9,34.54
step
  talk Mitsuwa##12721
  turnin Troll Charm##6462 |goto Ashenvale 11.65,34.85
step
  talk Je'neu Sancrea##12736
  turnin The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  only Paladin level>=20
  talk Ulric Frostveil##259649
  accept Seeking the Kor Gem##95042 |goto Ashenvale 11.87,34.41
step
  only Paladin haveq(95042)
  note Bring a Kor Gem to Ulric Frostveil in Ashenvale.
  collect Corrupted Kor Gem##6995 |q 95042 |goto Ashenvale 13.55,12.06 |tip {dropsfrom}Blackfathom Tide Priestess
step
  only Paladin haveq(95042)
  talk Ulric Frostveil##259649
  turnin Seeking the Kor Gem##95042 |goto Ashenvale 11.87,34.41
step
  talk Alonso##210995
  accept Dragonslayer's Helm##78132 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  accept Dragonslayer's Shield##78133 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  accept Dragonslayer's Lance##78134 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  turnin Dragonslayer's Helm##78132 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  turnin Dragonslayer's Shield##78133 |goto Ashenvale 43.4,70.4
step
  talk Alonso##210995
  turnin Dragonslayer's Lance##78134 |goto Ashenvale 43.4,70.4
step
  only level>=20
  talk Torek##12858
  accept Torek's Assault##6544 |goto Ashenvale 68.34,75.3
step
  only haveq(6544)
  note Escort Torek on his attack against Silverwing Outpost and Duriel Moonfire, then report to Ertog Ragetusk at Splintertree Post.
  goto Ashenvale 64.65,75.35 |tip Take Silverwing Outpost.
step
  talk Kuray'bin##12867
  accept Ashenvale Outrunners##6503 |goto Ashenvale 71.11,68.12
step
  note Kill 9 Ashenvale Outrunners, then return to Kuray'bin at Splintertree Outpost.
  kill Ashenvale Outrunner##12856 |q 6503 |goto Ashenvale 74.54,72.44
step
  talk Kuray'bin##12867
  turnin Ashenvale Outrunners##6503 |goto Ashenvale 71.11,68.12
step
  talk Yama Snowhoof##12837
  turnin Freedom to Ruul##6482 |goto Ashenvale 74.11,60.92
step
  only haveq(6544)
  talk Ertog Ragetusk##12877
  turnin Torek's Assault##6544 |goto Ashenvale 73.03,62.47
step
  only level>=23
  talk Mastok Wrilehiss##12737
  accept Stonetalon Standstill##25 |goto Ashenvale 73.67,60
step
  only level>=21
  talk Pixel##12724
  accept Satyr Horns##6441 |goto Ashenvale 73.06,61.48
step
  only haveq(6441)
  note Collect 16 Satyr Horns for Pixel in Splintertree Post.
  collect 16 Satyr Horns##5481 |q 6441 |goto Ashenvale 66.8,52.57 |tip {dropsfrom}Felmusk Satyr, Felmusk Rogue, Felmusk Felsworn
step
  only haveq(6441)
  talk Pixel##12724
  turnin Satyr Horns##6441 |goto Ashenvale 73.06,61.48
step
  only completed(216) level>=21
  talk Karang Amakkar##12757
  accept King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  only level>=23
  kill Tideress##12759 |goto Ashenvale 46,70 |tip Loot the quest item here — it starts the quest.
  accept The Befouled Element##1918 |goto Ashenvale 46,70
step
  only haveq(25)
  note Dispatch 12 Befouled Water Elementals at Mystral Lake, due east of the Talondeep Path and southwest of Splintertree Post.
  kill Befouled Water Elemental##3917 |q 25 |goto Ashenvale 49.36,69.85
step
  only haveq(6621)
  note Place Karang's Banner on the Foulweald Totem Mound. Do not let the furbolgs destroy the banner. Defeat Chief Murgut and bring Murgut's Totem to Karang Amakkar at Zoram'gar.
  collect Murgut's Totem##16976 |q 6621 |goto Ashenvale 56.43,63.5 |tip {dropsfrom}Chief Murgut, Murgut's Totem Basket
step
  only haveq(25)
  talk Mastok Wrilehiss##12737
  turnin Stonetalon Standstill##25 |goto Ashenvale 73.67,60
step
  only haveq(1918)
  note Bring the Befouled Water Globe to Mastok Wrilehiss at Splintertree Post, Ashenvale.
  talk Mastok Wrilehiss##12737
  turnin The Befouled Element##1918 |goto Ashenvale 73.67,60
step
  only completed(1918) level>=23
  talk Mastok Wrilehiss##12737
  accept Je'neu of the Earthen Ring##824 |goto Ashenvale 73.67,60
step
  only haveq(824)
  note Bring the Befouled Water Globe to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale.
  talk Je'neu Sancrea##12736
  turnin Je'neu of the Earthen Ring##824 |goto Ashenvale 11.56,34.29
step
  only haveq(6621)
  talk Karang Amakkar##12757
  turnin King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  only level>=23
  talk Gurda Ragescar##12718
  accept The Lost Pages##6504 |goto Ashenvale 70.01,71.16
step
  only haveq(6504)
  note Find the 12 missing pages of the Shredder Operating Manual, and put them together to form Chapters 1, 2, and 3. Return the pages to Gurda Ragescar near Splintertree Post.
  collect Shredder Operating Manual - Chapter 1##16642 |q 6504/1
  collect Shredder Operating Manual - Chapter 2##16643 |q 6504/2
  collect Shredder Operating Manual - Chapter 3##16644 |q 6504
step
  only haveq(6504)
  talk Gurda Ragescar##12718
  turnin The Lost Pages##6504 |goto Ashenvale 70.01,71.16
step
  only not completed(6382) not completed(742) not haveq(6382) not haveq(742)
  talk Warcaller Gorlach##10880
  accept The Ashenvale Hunt##235 |goto Orgrimmar 37.68,75.16
step
  only not Orc not Tauren not Skyborne Mage level>=26
  talk Deino##5885
  accept Waters of Xavian##1944 |goto Orgrimmar 38.45,86.13
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Zankaja##5910
  accept News of Dogran##1509 |goto Orgrimmar 37.04,59.45
step
  only Rogue
  talk Shenthul##3401
  accept The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  note Perform the Shattered Salute on Shenthul.
  talk Shenthul##3401 |q 2460 |goto Orgrimmar 43.05,53.74
step
  only Rogue
  talk Shenthul##3401
  turnin The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74 |tip {turninat}Orgrimmar
step
  only Rogue
  talk Shenthul##3401
  accept Deep Cover##2458 |goto Orgrimmar 43.05,53.74
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  talk Cazul##5909
  accept Love Hurts##65601 |goto Orgrimmar 47.06,46.43
step
  only Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  talk Searn Firewarder##5892
  accept Call of Water##1528 |goto Orgrimmar 37.96,37.73
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  note Speak with Magar in Orgrimmar.
  talk Magar##3363
  turnin Love Hurts##65601 |goto Orgrimmar 63.65,49.93 |tip {turninat}Orgrimmar
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  talk Magar##3363
  accept Wish You Were Here##65610 |goto Orgrimmar 63.65,49.93
step
  only not completed(6382) not completed(742) not haveq(6382) not haveq(742)
  note Speak with Senani Thunderheart at Splintertree Post, Ashenvale.
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##235 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  accept The Ashenvale Hunt##6383 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##6383 |goto Ashenvale 73.78,61.46
step
  kill Sharptalon##12676 |goto Ashenvale 74.98,70.06 |tip Loot the quest item here — it starts the quest.
  accept Sharptalon's Claw##2 |goto Ashenvale 74.98,70.06
step
  note Bring Sharptalon's Claw to Senani Thunderheart at Splintertree Post, Ashenvale.
  talk Senani Thunderheart##12696
  turnin Sharptalon's Claw##2 |goto Ashenvale 73.78,61.46
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  note Investigate Fallen Sky Lake in Ashenvale and report your findings to Gan'rul Bloodeye in Orgrimmar.
  collect Withered Scarf##190232 |q 65610 |goto Ashenvale 65.56,65.53 |tip {dropsfrom}Shadethicket Stone Mover, Shadethicket Bark Ripper, Shadethicket Oracle
step
  kill Shadumbra##12677 |goto Ashenvale 57.5,56.05 |tip Loot the quest item here — it starts the quest.
  accept Shadumbra's Head##24 |goto Ashenvale 57.5,56.05
step
  note Bring Shadumbra's Head to Senani Thunderheart at Splintertree Post, Ashenvale.
  talk Senani Thunderheart##12696
  turnin Shadumbra's Head##24 |goto Ashenvale 73.78,61.46
step
  only not Orc not Tauren not Skyborne Mage haveq(1944)
  note Bring the Xavian Water Sample to Deino in Orgrimmar.
  collect Xavian Water Sample##7268 |q 1944 |goto Ashenvale 76.29,41.49 |tip {dropsfrom}Xavian Waterfall
step
  kill Ursangous##12678 |goto Ashenvale 39.76,65.21 |tip Loot the quest item here — it starts the quest.
  accept Ursangous's Paw##23 |goto Ashenvale 39.76,65.21
step
  note Bring Ursangous's Paw to Senani Thunderheart at Splintertree Post, Ashenvale.
  talk Senani Thunderheart##12696
  turnin Ursangous's Paw##23 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  accept The Hunt Completed##247 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  turnin The Hunt Completed##247 |goto Ashenvale 73.78,61.46
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Speak with Gazrog at the Crossroads.
  talk Gazrog##3464
  turnin News of Dogran##1509 |goto The Barrens 51.93,30.32 |tip {turninat}The Barrens
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  talk Gazrog##3464
  accept News of Dogran##1510 |goto The Barrens 51.93,30.32
step
  only Shaman not completed(1529) not completed(2985) not completed(2986) not haveq(1529) not haveq(2985) not haveq(2986)
  note Find Islen Waterseer in the Barrens.
  talk Islen Waterseer##5901
  turnin Call of Water##1528 |goto The Barrens 65.83,43.78 |tip {turninat}The Barrens
step
  only Rogue
  note Travel to the Venture Co. Tower, north of the Sludge Fen and contact the Shattered Hand's covert operative, Taskmaster Fizzule.
  talk Taskmaster Fizzule##7233
  turnin Deep Cover##2458 |goto The Barrens 55.44,5.56 |tip {turninat}The Barrens
step
  only Warrior
  talk Torm Ragetotem##3041
  accept Speak with Ruga##1823 |goto Thunder Bluff 57.24,87.37
step
  talk Zangen Stonehoof##4721
  accept The Sacred Flame##1195 |goto Thunder Bluff 54.97,51.41
step
  only not Orc not Undead not Troll Druid
  talk Turak Runetotem##3033
  accept The Great Cat Spirit##98340 |goto Thunder Bluff 76.48,27.22
step
  only Troll Priest not completed(5643) not completed(5680) not haveq(5643) not haveq(5680)
  talk Miles Welsh##3044
  accept Shadowguard##5642 |goto Thunder Bluff 25.32,15.27
step
  only Warrior
  note Speak with Ruga Ragetotem.
  talk Ruga Ragetotem##6394
  turnin Speak with Ruga##1823 |goto The Barrens 44.67,59.42 |tip {turninat}The Barrens
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Bring 5 twitching antennae to Ruga Ragetotem at Camp Taurajo
  collect 5 Twitching Antenna##7119 |q 1824 |goto The Barrens 45.23,70.16 |tip {dropsfrom}Silithid Creeper, Silithid Grub, Silithid Protector
step
  only Warrior
  talk Ruga Ragetotem##6394
  turnin Trial at the Field of Giants##1824 |goto The Barrens 44.67,59.42 |tip {turninat}The Barrens
step
  only Warrior
  talk Ruga Ragetotem##6394
  accept Speak with Thun'grim##1825 |goto The Barrens 44.67,59.42
step
  only Warrior
  note Speak with Thun'grim Firegaze in the Barrens.
  talk Thun'grim Firegaze##5878
  turnin Speak with Thun'grim##1825 |goto The Barrens 57.23,30.34 |tip {turninat}The Barrens
step
  only Troll Priest not completed(5643) not completed(5680) not haveq(5643) not haveq(5680)
  note Speak to Ur'kyo in Orgrimmar.
  talk Ur'kyo##6018
  turnin Shadowguard##5642 |goto Orgrimmar 35.59,87.82 |tip {turninat}Orgrimmar
step
  only not Orc not Tauren not Skyborne Mage haveq(1944)
  talk Deino##5885
  turnin Waters of Xavian##1944 |goto Orgrimmar 38.45,86.13 |tip {turninat}Orgrimmar
step
  only Warlock completed(1507) not completed(1472) not haveq(1472)
  talk Gan'rul Bloodeye##5875
  turnin Wish You Were Here##65610 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  only not Orc not Undead not Troll Druid
  note Speak with Dendrite Starblaze in the village of Nighthaven, Moonglade.
  talk Dendrite Starblaze##11802
  turnin The Great Cat Spirit##98340 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  note Return a Filled Etched Phial to Zangen Stonehoof in Thunder Bluff.
  collect Filled Etched Phial##5868 |q 1195 |goto Ashenvale 60.2,72.91 |tip {dropsfrom}Ashenvale Moonwell
step
  talk Zangen Stonehoof##4721
  turnin The Sacred Flame##1195 |goto Thunder Bluff 54.97,51.41 |tip {turninat}Thunder Bluff
step
  only Warlock completed(1508) not completed(1472) not haveq(1472)
  note Speak with Ken'zigla at the Malaka'jin.
  talk Ken'zigla##4197
  turnin News of Dogran##1510 |goto Stonetalon Mountains 73.25,95.13 |tip {turninat}Stonetalon Mountains
step
  note {travel}Stonetalon Mountains
  goto Stonetalon Mountains 47.22,64.04
]])
