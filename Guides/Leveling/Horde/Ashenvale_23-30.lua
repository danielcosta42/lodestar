-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Ashenvale (23-30)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Thousand Needles (28-41)",
}, [[
step
  note {fp}Andruk
  goto Ashenvale 12.24,33.8 |tip {vendor}
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
  collect 20 Sapphire of Aku'Mai##16784 |q 6563 |goto Darkshore 31.63,92.81 |tip {dropsfrom}Sapphire of Aku'Mai
step
  talk Je'neu Sancrea##12736
  accept Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
step
  talk Je'neu Sancrea##12736
  accept Amongst the Ruins##6921 |goto Ashenvale 11.56,34.29
step
  note Bring the Fathom Core to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale.
  collect Fathom Core##16762 |q 6921 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {dropsfrom}Fathom Stone
step
  note Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale.
  kill Lorgus Jett##12902 |q 6565 |goto Blackfathom Deeps - Dungeon -1,-1 |elite
step
  note Take down 8 Thistlefur Avengers and 8 Thistlefur Shaman; most are located east of Zoram Strand in Thistlefur Village. Once completed, return to Karang Amakkar at Zoram'gar Outpost, Ashenvale.
  kill Thistlefur Avenger##3925 |q 216 |goto Ashenvale 36.64,36.96
step
  talk Mastok Wrilehiss##12737
  accept Je'neu of the Earthen Ring##824 |goto Ashenvale 73.67,60.0
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
  talk Valusha##17355
  accept Destroy the Legion##9534 |goto Ashenvale 73.23,60.39
step
  talk Valusha##17355
  accept Never Again!##9536 |goto Ashenvale 73.23,60.39
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
  collect Warsong Saw Blades##16742 |q 6571 |goto Ashenvale 71.4,67.63
step
  note Slay 6 Mannoroc Lashers, 6 Felguards and 6 Searing Infernals, and then return to Valusha at Splintertree Post in Ashenvale.
  kill Mannoroc Lasher##11697 |q 9534 |goto Ashenvale 79.38,81.53
step
  note Kill Gorgannon and Diathorus the Seeker, and then return to Velusha at Splintertree Post in Ashenvale.
  kill Gorgannon##17300 |q 9536 |goto Ashenvale 89.79,76.73
step
  note Kill 9 Ashenvale Outrunners, then return to Kuray'bin at Splintertree Outpost.
  kill Ashenvale Outrunner##12856 |q 6503 |goto Ashenvale 73.64,72.44
step
  talk Je'neu Sancrea##12736
  turnin The Essence of Aku'Mai##6563 |goto Ashenvale 11.56,34.29
step
  talk Je'neu Sancrea##12736
  turnin Allegiance to the Old Gods##6565 |goto Ashenvale 11.56,34.29
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
  talk Karang Amakkar##12757
  accept King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  note Place Karang's Banner on the Foulweald Totem Mound. Do not let the furbolgs destroy the banner. Defeat Chief Murgut and bring Murgut's Totem to Karang Amakkar at Zoram'gar.
  collect Murgut's Totem##16976 |q 6621 |goto Ashenvale 11.9,34.54 |tip {dropsfrom}Chief Murgut, Murgut's Totem Basket
step
  talk Valusha##17355
  turnin Destroy the Legion##9534 |goto Ashenvale 73.23,60.39
step
  talk Valusha##17355
  turnin Never Again!##9536 |goto Ashenvale 73.23,60.39
step
  talk Pixel##12724
  turnin Satyr Horns##6441 |goto Ashenvale 73.06,61.48
step
  talk Senani Thunderheart##12696
  turnin The Ashenvale Hunt##6383 |goto Ashenvale 73.78,61.46
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
  talk Karang Amakkar##12757
  turnin King of the Foulweald##6621 |goto Ashenvale 11.9,34.54
step
  note {travel}Thousand Needles
  goto Thousand Needles 32.24,22.17
]])
