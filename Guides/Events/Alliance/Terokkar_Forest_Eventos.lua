-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Terokkar Forest (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Exorcist Sullivan##24885
  accept Spirits of Auchindoun##11505 |goto Terokkar Forest 55.81,53.74
step
  talk Rilak the Redeemed##22292
  accept The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  talk Isla Starmane##18760
  accept Escape from Firewing Point!##10051 |goto Terokkar Forest 73.93,35.14
step
  talk Akuno##22377
  accept Escaping the Tomb##10887 |goto Terokkar Forest 30.61,49.06
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
  collect Eye of Veil Reskk##185200 |q 10847 |goto Terokkar Forest 50.12,19.37
step
  talk Exorcist Sullivan##24885
  turnin Spirits of Auchindoun##11505 |goto Terokkar Forest 55.81,53.74
step
  talk Rilak the Redeemed##22292
  turnin The Eyes of Skettis##10847 |goto Shattrath City 52.54,21.01
step
  talk Captain Auric Sunchaser##18745
  turnin Escape from Firewing Point!##10051 |goto Terokkar Forest 57.18,55.75
step
  talk Mekeda##22370
  turnin Escaping the Tomb##10887 |goto Terokkar Forest 37.84,51.84
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
  talk Yuula##23449
  accept To Skettis!##11098 |goto Shattrath City 64.33,42.33
step
  talk Kirrik the Awakened##22272
  turnin Seek Out Kirrik##10849 |goto Terokkar Forest 37.45,51.54
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
