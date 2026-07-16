-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Deadwind Pass (70-70)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Isle of Quel'Danas (70-70)",
}, [[
step
  talk Archmage Alturus##17613
  accept Medivh's Journal##9630 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Digging Up the Past##9680 |goto Deadwind Pass 47.28,75.21
step
  note Archmage Alturus wants you to go to the mountains south of Karazhan in Deadwind Pass and retrieve a Charred Bone Fragment.
  collect Charred Bone Fragment##24152 |q 9680 |goto Deadwind Pass 45.0,78.96 |tip {dropsfrom}Charred Bone Fragment
step
  talk Archmage Alturus##17613
  accept Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  note Bring 10 Ghostly Essences to Archmage Alturus outside of Karazhan.
  collect 10 Ghostly Essence##24480 |q 9825 |goto Deadwind Pass 51.97,78.4 |tip {dropsfrom}Restless Shade, Wailing Spectre, Damned Soul
step
  talk Archmage Alturus##17613
  accept Assessing the Situation##9840 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept A Demonic Presence##9844 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Leryda##18253
  accept Path of the Violet Mage##10729 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Path of the Violet Restorer##10730 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Path of the Violet Assassin##10731 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Path of the Violet Protector##10732 |goto Deadwind Pass 47.24,74.99
step
  note Use the Violet Scrying Crystal near underground sources of water in the Master's Cellar and return to Archmage Alturus outside of Karazhan.
  kill Underground Well Credit Marker##18161 |q 9824 |goto Deadwind Pass 53.2,90.22
step
  note Archmage Alturus wants you to destroy the Demonic Presence at the top of Karazhan.
  kill Prince Malchezaar##15690 |q 9844 |goto Karazhan - Raid -1,-1 |raid
step
  talk Archmage Alturus##17613
  turnin Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  turnin Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Leryda##18253
  turnin Path of the Violet Mage##10729 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Path of the Violet Restorer##10730 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Path of the Violet Assassin##10731 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Path of the Violet Protector##10732 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Alturus##17613
  turnin Digging Up the Past##9680 |goto Deadwind Pass 47.28,75.21
step
  talk Koren##16388
  turnin Assessing the Situation##9840 |goto Karazhan - Raid -1,-1 |tip {turninat}Karazhan - Raid
step
  talk Archmage Alturus##17613
  turnin A Demonic Presence##9844 |goto Deadwind Pass 47.28,75.21
step
  talk Wravien##16813
  turnin Medivh's Journal##9630 |goto Karazhan - Raid -1,-1 |tip {turninat}Karazhan - Raid
step
  talk Archmage Alturus##17613
  accept A Colleague's Aid##9631 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Contact from Dalaran##9826 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept The New Directive##9860 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10733 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Honored reputation with the Violet Eye.
  collect Violet Signet##29284 |q 10733 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10734 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Honored reputation with the Violet Eye.
  collect Violet Signet##29288 |q 10734 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10735 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Honored reputation with the Violet Eye.
  collect Violet Signet##29280 |q 10735 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10736 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Honored reputation with the Violet Eye.
  collect Violet Signet##29276 |q 10736 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Cedric##18165
  turnin Contact from Dalaran##9826 |goto Alterac Mountains 15.61,54.58 |tip {turninat}Alterac Mountains
step
  talk Archmage Cedric##18165
  turnin The New Directive##9860 |goto Alterac Mountains 15.61,54.58 |tip {turninat}Alterac Mountains
step
  talk Archmage Leryda##18253
  turnin Down the Violet Path##10733 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Down the Violet Path##10734 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Down the Violet Path##10735 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Down the Violet Path##10736 |goto Deadwind Pass 47.24,74.99
step
  talk Kalynna Lathred##17636
  turnin A Colleague's Aid##9631 |goto Netherstorm 32.22,63.6 |tip {turninat}Netherstorm
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10738 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Revered reputation with the Violet Eye.
  collect Violet Signet##29285 |q 10738 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10739 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Revered reputation with the Violet Eye.
  collect Violet Signet##29289 |q 10739 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10740 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Revered reputation with the Violet Eye.
  collect Violet Signet##29281 |q 10740 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10741 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Revered reputation with the Violet Eye.
  collect Violet Signet##29277 |q 10741 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Distinguished Service##10738 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Distinguished Service##10739 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Distinguished Service##10740 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Distinguished Service##10741 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10725 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Exalted reputation with the Violet Eye.
  collect Violet Signet##29286 |q 10725 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10726 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Exalted reputation with the Violet Eye.
  collect Violet Signet##29291 |q 10726 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10727 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Exalted reputation with the Violet Eye.
  collect Violet Signet##29282 |q 10727 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10728 |goto Deadwind Pass 47.24,74.99
step
  note Bring your Violet Signet to Archmage Leryda at Deadwind Pass after obtaining Exalted reputation with the Violet Eye.
  collect Violet Signet##29278 |q 10728 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Eminence Among the Violet Eye##10725 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Eminence Among the Violet Eye##10726 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Eminence Among the Violet Eye##10727 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Eminence Among the Violet Eye##10728 |goto Deadwind Pass 47.24,74.99
step
  note {travel}Isle of Quel'Danas
  goto Isle of Quel'Danas 47.42,30.74
]])
