-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Terokkar Forest (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Exorcist Vaisha##24886
  accept Spirits of Auchindoun##11506 |goto Terokkar Forest 49.9,46.67
step
  talk Rilak the Redeemed##22292
  accept The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  talk Isla Starmane##18760
  accept Escape from Firewing Point!##10052 |goto Terokkar Forest 73.93,35.14
step
  talk Akuno##22377
  accept Escaping the Tomb##10887 |goto Terokkar Forest 30.61,49.06
step
  talk Jorin Deadeye##18106
  accept The Impotent Leader##9888 |goto Nagrand 55.56,37.62
step
  talk Skywing##22424
  accept Skywing##10898 |goto Terokkar Forest 53.85,72.38
step
  talk Chief Archaeologist Letoll##22458
  accept Digging Through Bones##10922 |goto Terokkar Forest 31.27,76.09
step
  talk Yuula##23449
  accept Threat from Above##11096 |goto Shattrath City 64.33,42.33
step
  note Bring the Eye of Reskk and the Eye of Shienor to Rilak the Redeemed in the Lower City district of Shattrath.
  collect Eye of Veil Reskk##25638 |q 10847 |goto Terokkar Forest 50.12,19.37
step
  talk Exorcist Vaisha##24886
  turnin Spirits of Auchindoun##11506 |goto Terokkar Forest 49.9,46.67
step
  talk Rilak the Redeemed##22292
  turnin The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  talk Advisor Faila##18712
  turnin Escape from Firewing Point!##10052 |goto Terokkar Forest 48.94,44.58
step
  talk Mekeda##22370
  turnin Escaping the Tomb##10887 |goto Terokkar Forest 37.84,51.84
step
  talk Kilrath##18273
  turnin The Impotent Leader##9888 |goto Terokkar Forest 19.77,60.85
step
  talk Rilak the Redeemed##22292
  turnin Skywing##10898 |goto Shattrath City 52.54,21.01
step
  talk Dwarfowitz##22481
  turnin Digging Through Bones##10922 |goto Terokkar Forest 30.98,76.19
step
  talk Yuula##23449
  turnin Threat from Above##11096 |goto Shattrath City 64.33,42.33
step
  talk Rilak the Redeemed##22292
  accept Seek Out Kirrik##10849 |goto Shattrath City 52.54,21.01
step
  talk Kilrath##18273
  accept Don't Kill the Fat One##9889 |goto Terokkar Forest 19.77,60.85
step
  talk Yuula##23449
  accept To Skettis!##11098 |goto Shattrath City 64.33,42.33
step
  note Kilrath in Terokkar Forest has asked that you kill 10 Boulderfist Invaders and beat Unkor the Ruthless until he talks.
  kill Boulderfist Invader##18260 |q 9889 |goto Terokkar Forest 20.19,64.37
step
  talk Kirrik the Awakened##22272
  turnin Seek Out Kirrik##10849 |goto Terokkar Forest 37.45,51.54
step
  talk Unkor the Ruthless##18262
  turnin Don't Kill the Fat One##9889 |goto Terokkar Forest 20.06,63.24
step
  talk Sky Sergeant Doryn##23048
  turnin To Skettis!##11098 |goto Terokkar Forest 64.55,66.7
step
  talk Kirrik the Awakened##22272
  accept Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest 37.45,51.54
step
  talk Skyguard Prisoner##23383
  accept Escape from Skettis##11085 |goto Terokkar Forest 75.07,86.3
step
  talk Kirrik the Awakened##22272
  turnin Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest 37.45,51.54
step
  talk Sky Sergeant Doryn##23048
  turnin Escape from Skettis##11085 |goto Terokkar Forest 64.55,66.7
]])
