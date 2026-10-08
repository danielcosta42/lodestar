-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Ashenvale (22-27)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Hillsbrad Foothills (23-39)",
}, [[
step
  note {fp}Qeeju
  goto Ashenvale 73.38,61.02 |tip {vendor}
step
  talk Karang Amakkar##12757
  accept Between a Rock and a Thistlefur##216 |goto Ashenvale 11.9,34.54
step
  talk Marukai##12719
  accept Naga at the Zoram Strand##6442 |goto Ashenvale 11.69,34.91
step
  note Bring 20 Wrathtail Heads to Marukai along the Zoram Strand.
  collect 20 Wrathtail Head##5490 |q 6442 |goto Ashenvale 7.2,14.49 |tip {dropsfrom}Wrathtail Myrmidon, Wrathtail Razortail, Wrathtail Wave Rider
step
  talk Mitsuwa##12721
  accept Troll Charm##6462 |goto Ashenvale 11.65,34.85
step
  note Bring 8 Troll Charms to Mitsuwa at the Zoram'gar Outpost.
  collect 8 Troll Charm##16602 |q 6462 |goto Ashenvale 40.76,33.64 |tip {dropsfrom}Troll Chest
step
  talk Je'neu Sancrea##12736
  accept The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  note Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale.
  collect 20 Sapphire of Aku'Mai##16784 |q 6563 |goto Darkshore 31.63,92.81
step
  kill Blackfathom Tide Priestess##4802 |goto Ashenvale 13.55,12.06 |elite |tip Loot the quest item here — it starts the quest.
  accept Allegiance to the Old Gods##6564 |goto Ashenvale 13.55,12.06
step
  talk Je'neu Sancrea##12736
  accept Amongst the Ruins##6921 |goto Ashenvale 11.56,34.29
step
  note Bring the Fathom Core to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale.
  collect Fathom Core##16762 |q 6921 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {dropsfrom}Fathom Stone
step
  only Paladin
  talk Ulric Frostveil##259649
  accept Seeking the Kor Gem##95042 |goto Ashenvale 11.8,34.4
step
  only Paladin
  note Bring a Kor Gem to Ulric Frostveil in Ashenvale.
  collect Corrupted Kor Gem##6995 |q 95042 |goto Ashenvale 13.55,12.06 |tip {dropsfrom}Blackfathom Tide Priestess, Blackfathom Oracle, Blackfathom Sea Witch
step
  note Take down 8 Thistlefur Avengers and 8 Thistlefur Shaman; most are located east of Zoram Strand in Thistlefur Village. Once completed, return to Karang Amakkar at Zoram'gar Outpost, Ashenvale.
  kill Thistlefur Avenger##3925 |q 216 |goto Ashenvale 36.64,36.96
step
  kill Tideress##12759 |goto Ashenvale 46,70 |tip Loot the quest item here — it starts the quest.
  accept The Befouled Element##1918 |goto Ashenvale 46,70
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
  talk Kuray'bin##12867
  accept Ashenvale Outrunners##6503 |goto Ashenvale 71.11,68.12
step
  talk Gurda Ragescar##12718
  accept The Lost Pages##6504 |goto Ashenvale 70.01,71.16
step
  note Find the 12 missing pages of the Shredder Operating Manual, and put them together to form Chapters 1, 2, and 3. Return the pages to Gurda Ragescar near Splintertree Post.
  collect Shredder Operating Manual - Chapter 1##16642 |q 6504 |goto Ashenvale 70.01,71.16
step
  talk Locke Okarr##11820
  accept Warsong Supplies##6571 |goto Ashenvale 71.4,67.63
step
  note Collect the Warsong Supplies: Warsong Saw Blades, Logging Rope, Warsong Oil, and the Warsong Axe Shipment for Locke Okarr in Splintertree Post.
  collect Warsong Saw Blades##16742 |q 6571 |goto Ashenvale 73.06,61.48 |tip {dropsfrom}Pixel
step
  note Kill 9 Ashenvale Outrunners, then return to Kuray'bin at Splintertree Outpost.
  kill Ashenvale Outrunner##12856 |q 6503 |goto Ashenvale 73.64,72.44
step
  talk Mastok Wrilehiss##12737
  turnin The Befouled Element##1918 |goto Ashenvale 73.67,60
step
  talk Mastok Wrilehiss##12737
  accept Je'neu of the Earthen Ring##824 |goto Ashenvale 73.67,60
step
  talk Senani Thunderheart##12696
  accept The Ashenvale Hunt##6383 |goto Ashenvale 73.78,61.46
step
  talk Pixel##12724
  accept Satyr Horns##6441 |goto Ashenvale 73.06,61.48
step
  note Collect 16 Satyr Horns for Pixel in Splintertree Post.
  collect 16 Satyr Horns##5481 |q 6441 |goto Ashenvale 78.4,45.31 |tip {dropsfrom}Xavian Rogue, Xavian Betrayer, Xavian Felsworn
step
  only Paladin
  talk Ulric Frostveil##259649
  turnin Seeking the Kor Gem##95042 |goto Ashenvale 11.8,34.4
step
  talk Je'neu Sancrea##12736
  turnin The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6564 |goto Ashenvale 11.56,34.29
step
  talk Je'neu Sancrea##12736
  turnin Amongst the Ruins##6921 |goto Ashenvale 11.56,34.29
step
  talk Marukai##12719
  turnin Naga at the Zoram Strand##6442 |goto Ashenvale 11.69,34.91
step
  talk Je'neu Sancrea##12736
  turnin Je'neu of the Earthen Ring##824 |goto Ashenvale 11.56,34.29
step
  talk Karang Amakkar##12757
  turnin Between a Rock and a Thistlefur##216 |goto Ashenvale 11.9,34.54
step
  talk Mitsuwa##12721
  turnin Troll Charm##6462 |goto Ashenvale 11.65,34.85
step
  talk Je'neu Sancrea##12736
  accept Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
step
  talk Karang Amakkar##12757
  accept King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  note Place Karang's Banner on the Foulweald Totem Mound. Do not let the furbolgs destroy the banner. Defeat Chief Murgut and bring Murgut's Totem to Karang Amakkar at Zoram'gar.
  collect Murgut's Totem##16976 |q 6621 |goto Ashenvale 56.43,63.5 |tip {dropsfrom}Chief Murgut, Murgut's Totem Basket
step
  note Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale.
  kill Lorgus Jett##12902 |q 6565 |goto Blackfathom Deeps - Dungeon -1,-1 |elite
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
  talk Kuray'bin##12867
  turnin Ashenvale Outrunners##6503 |goto Ashenvale 71.11,68.12
step
  talk Gurda Ragescar##12718
  turnin The Lost Pages##6504 |goto Ashenvale 70.01,71.16
step
  talk Locke Okarr##11820
  turnin Warsong Supplies##6571 |goto Ashenvale 71.4,67.63
step
  talk Pixel##12724
  turnin Satyr Horns##6441 |goto Ashenvale 73.06,61.48
step
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##6383 |goto Ashenvale 73.78,61.46
step
  kill Shadumbra##12677 |goto Ashenvale 57.5,56.05 |tip Loot the quest item here — it starts the quest.
  accept Shadumbra's Head##24 |goto Ashenvale 57.5,56.05
step
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
step
  talk Karang Amakkar##12757
  turnin King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  kill Ursangous##12678 |goto Ashenvale 39.76,65.21 |tip Loot the quest item here — it starts the quest.
  accept Ursangous's Paw##23 |goto Ashenvale 39.76,65.21
step
  kill Sharptalon##12676 |goto Ashenvale 74.98,70.06 |tip Loot the quest item here — it starts the quest.
  accept Sharptalon's Claw##2 |goto Ashenvale 74.98,70.06
step
  talk Senani Thunderheart##12696
  turnin Sharptalon's Claw##2 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  turnin Ursangous's Paw##23 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  turnin Shadumbra's Head##24 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  accept The Hunt Completed##247 |goto Ashenvale 73.78,61.46
step
  talk Senani Thunderheart##12696
  turnin The Hunt Completed##247 |goto Ashenvale 73.78,61.46
step
  note {travel}Hillsbrad Foothills
  goto Hillsbrad Foothills 20.79,47.4
]])
