-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Karazhan", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Archmage Alturus##17613
  accept Medivh's Journal##9630 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  note Use the Violet Scrying Crystal near underground sources of water in the Master's Cellar and return to Archmage Alturus outside of Karazhan.
  get Arcane Disturbances |q 9824 |goto Deadwind Pass 53.2,90.22
step
  note Bring 10 Ghostly Essences to Archmage Alturus outside of Karazhan.
  collect 10 Ghostly Essence##24480 |q 9825 |goto Deadwind Pass 51.97,78.4 |tip {dropsfrom}Restless Shade, Wailing Spectre, Damned Soul
step
  talk Wravien##16813
  turnin Medivh's Journal##9630 |goto Karazhan - Raid -1,-1
step
  talk Archmage Alturus##17613
  turnin Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  turnin Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  talk Wravien##16813
  accept In Good Hands##9638 |goto Karazhan - Raid -1,-1
step
  talk Archmage Alturus##17613
  accept Contact from Dalaran##9826 |goto Deadwind Pass 47.28,75.21
step
  talk Gradav##16814
  turnin In Good Hands##9638 |goto Karazhan - Raid -1,-1
step
  talk Archmage Cedric##18165
  turnin Contact from Dalaran##9826 |goto Alterac Mountains 15.61,54.58
step
  talk Gradav##16814
  accept Kamsis##9639 |goto Karazhan - Raid -1,-1
step
  talk Archmage Cedric##18165
  accept Khadgar##9829 |goto Alterac Mountains 15.61,54.58
step
  talk Kamsis##16815
  turnin Kamsis##9639 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  turnin Khadgar##9829 |goto Shattrath City 54.75,44.32
step
  talk Kamsis##16815
  accept The Shade of Aran##9640 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  accept Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  note Obtain Medivh's Journal and return to Kamsis at the Guardian's Library in Karazhan.
  collect Medivh's Journal##23933 |q 9640 |goto Karazhan - Raid -1,-1 |tip {dropsfrom}Shade of Aran
step
  note Khadgar wants you to enter the Shadow Labyrinth at Auchindoun and retrieve the First Key Fragment from an Arcane Container hidden there.
  collect First Key Fragment##24514 |q 9831 |goto Shattrath City 54.75,44.32 |tip {dropsfrom}First Fragment Guardian
step
  talk Kamsis##16815
  turnin The Shade of Aran##9640 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  turnin Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  talk Kamsis##16815
  accept The Master's Terrace##9645 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  accept The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  note Obtain the Second Key Fragment from an Arcane Container inside Coilfang Reservoir and the Third Key Fragment from an Arcane Container inside Tempest Keep. Return to Khadgar in Shattrath City after you've completed this task.
  collect Second Key Fragment##24487 |q 9832 |goto Shattrath City 54.75,44.32 |tip {dropsfrom}Second Fragment Guardian
step
  talk Archmage Alturus##17613
  turnin The Master's Terrace##9645 |goto Deadwind Pass 47.28,75.21
step
  talk Khadgar##18166
  turnin The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept The Master's Touch##9836 |goto Shattrath City 54.75,44.32
step
  talk Medivh##15608
  turnin The Master's Touch##9836 |goto The Black Morass - Dungeon -1,-1
step
  talk Medivh##15608
  accept Return to Khadgar##9837 |goto The Black Morass - Dungeon -1,-1
step
  talk Khadgar##18166
  turnin Return to Khadgar##9837 |goto Shattrath City 54.75,44.32
step
  talk Khadgar##18166
  accept The Violet Eye##9838 |goto Shattrath City 54.75,44.32
step
  talk Archmage Alturus##17613
  turnin The Violet Eye##9838 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Assessing the Situation##9840 |goto Deadwind Pass 47.28,75.21
step
  talk Koren##16388
  turnin Assessing the Situation##9840 |goto Karazhan - Raid -1,-1
step
  talk Koren##16388
  accept Keanna's Log##9843 |goto Karazhan - Raid -1,-1
step
  note Search the Guest Chambers inside Karazhan for Keanna's Log and bring it to Archmage Alturus outside Karazhan.
  collect Keanna's Log##24492 |q 9843 |goto Karazhan - Raid -1,-1 |tip {dropsfrom}Keanna's Log
step
  talk Archmage Alturus##17613
  turnin Keanna's Log##9843 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept A Demonic Presence##9844 |goto Deadwind Pass 47.28,75.21
step
  note Archmage Alturus wants you to destroy the Demonic Presence at the top of Karazhan.
  kill Prince Malchezaar##15690 |q 9844 |goto Karazhan - Raid -1,-1 |raid
step
  talk Archmage Alturus##17613
  turnin A Demonic Presence##9844 |goto Deadwind Pass 47.28,75.21
]])
