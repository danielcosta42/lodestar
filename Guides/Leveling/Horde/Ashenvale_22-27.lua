-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Ashenvale (22-27)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/The Barrens (23-30)",
}, [[
step
  only not completed(6382) not completed(742) not haveq(6382) not haveq(742)
  talk Warcaller Gorlach##10880
  accept The Ashenvale Hunt##235 |goto Orgrimmar 37.68,75.16
step
  only Warlock completed(65601) not completed(1472) not haveq(1472)
  talk Magar##3363
  accept Wish You Were Here##65610 |goto Orgrimmar 63.65,49.93
step
  note {fp}Andruk
  goto Ashenvale 12.24,33.8 |tip {vendor}
step
  talk Marukai##12719
  accept Naga at the Zoram Strand##6442 |goto Ashenvale 11.69,34.91
step
  talk Je'neu Sancrea##12736
  accept The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  only completed(6562)
  kill Blackfathom Tide Priestess##4802 |goto Ashenvale 13.55,12.06 |elite |tip Loot the quest item here — it starts the quest.
  accept Allegiance to the Old Gods##6564 |goto Ashenvale 13.55,12.06
step
  talk Muglash##12717
  accept Vorsha the Lasher##6641 |goto Ashenvale 12.06,34.63
step
  talk Karang Amakkar##12757
  accept Between a Rock and a Thistlefur##216 |goto Ashenvale 11.9,34.54
step
  talk Mitsuwa##12721
  accept Troll Charm##6462 |goto Ashenvale 11.65,34.85
step
  note Bring 20 Wrathtail Heads to Marukai along the Zoram Strand.
  collect 20 Wrathtail Head##5490 |q 6442 |goto Ashenvale 7.21,14.28 |tip {dropsfrom}Wrathtail Myrmidon, Wrathtail Razortail, Wrathtail Wave Rider
step
  note Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale.
  collect 20 Sapphire of Aku'Mai##16784 |q 6563 |goto Ashenvale 13.59,13.14
step
  talk Marukai##12719
  turnin Naga at the Zoram Strand##6442 |goto Ashenvale 11.69,34.91
step
  talk Je'neu Sancrea##12736
  turnin The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  only completed(6562)
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6564 |goto Ashenvale 11.56,34.29
step
  talk Warsong Runner##12863
  turnin Vorsha the Lasher##6641 |goto Ashenvale 12.22,34.22
step
  talk Ruul Snowhoof##12818
  accept Freedom to Ruul##6482 |goto Ashenvale 41.53,34.49
step
  note Take down 8 Thistlefur Avengers and 8 Thistlefur Shaman; most are located east of Zoram Strand in Thistlefur Village. Once completed, return to Karang Amakkar at Zoram'gar Outpost, Ashenvale.
  kill Thistlefur Avenger##3925 |q 216 |goto Ashenvale 36.71,36.96
step
  note Bring 8 Troll Charms to Mitsuwa at the Zoram'gar Outpost.
  collect 8 Troll Charm##16602 |q 6462 |goto Ashenvale 40.86,33.64 |tip {dropsfrom}Troll Chest
step
  only not completed(6382) not completed(742) not haveq(6382) not haveq(742)
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##235 |goto Ashenvale 73.78,61.46
step
  talk Yama Snowhoof##12837
  turnin Freedom to Ruul##6482 |goto Ashenvale 74.11,60.92
step
  talk Senani Thunderheart##12696
  accept The Ashenvale Hunt##6383 |goto Ashenvale 73.78,61.46
step
  talk Kuray'bin##12867
  accept Ashenvale Outrunners##6503 |goto Ashenvale 71.11,68.12
step
  talk Torek##12858
  accept Torek's Assault##6544 |goto Ashenvale 68.34,75.3
step
  talk Mastok Wrilehiss##12737
  accept Stonetalon Standstill##25 |goto Ashenvale 73.67,60
step
  note Kill 9 Ashenvale Outrunners, then return to Kuray'bin at Splintertree Outpost.
  talk Ashenvale Outrunner##12856 |q 6503 |goto Ashenvale 74.54,72.44
step
  only Warlock completed(65601) not completed(1472) not haveq(1472)
  note Investigate Fallen Sky Lake in Ashenvale and report your findings to Gan'rul Bloodeye in Orgrimmar.
  collect Withered Scarf##190232 |q 65610 |goto Ashenvale 65.56,65.53 |tip {dropsfrom}Shadethicket Stone Mover, Shadethicket Bark Ripper, Shadethicket Oracle
step
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##6383 |goto Ashenvale 73.78,61.46
step
  talk Kuray'bin##12867
  turnin Ashenvale Outrunners##6503 |goto Ashenvale 71.11,68.12
step
  talk Ertog Ragetusk##12877
  turnin Torek's Assault##6544 |goto Ashenvale 73.03,62.47
step
  talk Karang Amakkar##12757
  turnin Between a Rock and a Thistlefur##216 |goto Ashenvale 11.9,34.54
step
  talk Mitsuwa##12721
  turnin Troll Charm##6462 |goto Ashenvale 11.65,34.85
step
  only Paladin
  talk Ulric Frostveil##259649
  accept Seeking the Kor Gem##95042 |goto Ashenvale 11.8,34.4
step
  talk Karang Amakkar##12757
  accept King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  only Paladin
  note Bring a Kor Gem to Ulric Frostveil in Ashenvale.
  collect Corrupted Kor Gem##6995 |q 95042 |goto Ashenvale 13.55,12.06 |tip {dropsfrom}Blackfathom Tide Priestess, Blackfathom Oracle, Blackfathom Sea Witch
step
  only Paladin
  talk Ulric Frostveil##259649
  turnin Seeking the Kor Gem##95042 |goto Ashenvale 11.8,34.4
step
  kill Ursangous##12678 |goto Ashenvale 39.76,65.21 |tip Loot the quest item here — it starts the quest.
  accept Ursangous's Paw##23 |goto Ashenvale 39.76,65.21
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
  note Dispatch 12 Befouled Water Elementals at Mystral Lake, due east of the Talondeep Path and southwest of Splintertree Post.
  kill Befouled Water Elemental##3917 |q 25 |goto Ashenvale 49.36,69.85
step
  note Place Karang's Banner on the Foulweald Totem Mound. Do not let the furbolgs destroy the banner. Defeat Chief Murgut and bring Murgut's Totem to Karang Amakkar at Zoram'gar.
  collect Murgut's Totem##16976 |q 6621 |goto Ashenvale 56.43,63.5 |tip {dropsfrom}Chief Murgut, Murgut's Totem Basket
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
  kill Tideress##12759 |goto Ashenvale 46,70 |tip Loot the quest item here — it starts the quest.
  accept The Befouled Element##1918 |goto Ashenvale 46,70
step
  talk Senani Thunderheart##12696
  turnin Ursangous's Paw##23 |goto Ashenvale 73.78,61.46
step
  talk Mastok Wrilehiss##12737
  turnin Stonetalon Standstill##25 |goto Ashenvale 73.67,60
step
  talk Mastok Wrilehiss##12737
  turnin The Befouled Element##1918 |goto Ashenvale 73.67,60
step
  talk Pixel##12724
  accept Satyr Horns##6441 |goto Ashenvale 73.06,61.48
step
  kill Shadumbra##12677 |goto Ashenvale 57.5,56.05 |tip Loot the quest item here — it starts the quest.
  accept Shadumbra's Head##24 |goto Ashenvale 57.5,56.05
step
  talk Mastok Wrilehiss##12737
  accept Je'neu of the Earthen Ring##824 |goto Ashenvale 73.67,60
step
  talk Locke Okarr##11820
  accept Warsong Supplies##6571 |goto Ashenvale 71.4,67.63
step
  note Collect 16 Satyr Horns for Pixel in Splintertree Post.
  collect 16 Satyr Horns##5481 |q 6441 |goto Ashenvale 78.4,45.12 |tip {dropsfrom}Xavian Rogue, Xavian Betrayer, Xavian Felsworn
step
  note Collect the Warsong Supplies: Warsong Saw Blades, Logging Rope, Warsong Oil, and the Warsong Axe Shipment for Locke Okarr in Splintertree Post.
  collect Warsong Saw Blades##16742 |q 6571 |goto Ashenvale 73.06,61.48 |tip {dropsfrom}Pixel
step
  talk Senani Thunderheart##12696
  turnin Shadumbra's Head##24 |goto Ashenvale 73.78,61.46
step
  talk Pixel##12724
  turnin Satyr Horns##6441 |goto Ashenvale 73.06,61.48
step
  talk Locke Okarr##11820
  turnin Warsong Supplies##6571 |goto Ashenvale 71.4,67.63
step
  talk Je'neu Sancrea##12736
  turnin Je'neu of the Earthen Ring##824 |goto Ashenvale 11.56,34.29
step
  talk Karang Amakkar##12757
  turnin King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  only Warlock completed(65601) not completed(1472) not haveq(1472)
  talk Gan'rul Bloodeye##5875
  turnin Wish You Were Here##65610 |goto Orgrimmar 48.25,45.28 |tip {turninat}Orgrimmar
step
  talk Zangen Stonehoof##4721
  accept The Sacred Flame##1195 |goto Thunder Bluff 54.97,51.41
step
  only not Orc not Tauren not Skyborne Mage
  talk Deino##5885
  accept Waters of Xavian##1944 |goto Orgrimmar 38.45,86.13
step
  talk Gurda Ragescar##12718
  accept The Lost Pages##6504 |goto Ashenvale 70.01,71.16
step
  note Find the 12 missing pages of the Shredder Operating Manual, and put them together to form Chapters 1, 2, and 3. Return the pages to Gurda Ragescar near Splintertree Post.
  collect Shredder Operating Manual - Chapter 1##16642 |q 6504 |goto Ashenvale 70.01,71.16
step
  note Return a Filled Etched Phial to Zangen Stonehoof in Thunder Bluff.
  collect Filled Etched Phial##5868 |q 1195 |goto Ashenvale 60.2,72.91 |tip {dropsfrom}Ashenvale Moonwell
step
  only not Orc not Tauren not Skyborne Mage
  note Bring the Xavian Water Sample to Deino in Orgrimmar.
  collect Xavian Water Sample##7268 |q 1944 |goto Ashenvale 76.29,41.49 |tip {dropsfrom}Xavian Waterfall
step
  talk Zangen Stonehoof##4721
  turnin The Sacred Flame##1195 |goto Thunder Bluff 54.97,51.41 |tip {turninat}Thunder Bluff
step
  only not Orc not Tauren not Skyborne Mage
  talk Deino##5885
  turnin Waters of Xavian##1944 |goto Orgrimmar 38.45,86.13 |tip {turninat}Orgrimmar
step
  talk Gurda Ragescar##12718
  turnin The Lost Pages##6504 |goto Ashenvale 70.01,71.16
step
  only not Orc not Tauren not Skyborne Mage
  talk Deino##5885
  accept Laughing Sisters##1945 |goto Orgrimmar 38.45,86.13
step
  only not Orc not Tauren not Skyborne Mage
  note Bring 12 Laughing Sister's Hairs to Kil'hala at the Crossroads.
  collect 12 Laughing Sister's Hair##7270 |q 1945 |goto Ashenvale 59.79,55.37 |tip {dropsfrom}Laughing Sister
step
  only not Orc not Tauren not Skyborne Mage
  talk Kil'hala##3484
  turnin Laughing Sisters##1945 |goto The Barrens 52.2,31.7 |tip {turninat}The Barrens
step
  kill Sharptalon##12676 |goto Ashenvale 74.98,70.06 |tip Loot the quest item here — it starts the quest.
  accept Sharptalon's Claw##2 |goto Ashenvale 74.98,70.06
step
  talk Senani Thunderheart##12696
  turnin Sharptalon's Claw##2 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  accept The Hunt Completed##247 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  turnin The Hunt Completed##247 |goto Ashenvale 73.78,61.46
step
  note {travel}The Barrens
  goto The Barrens 51.07,29.63
]])
