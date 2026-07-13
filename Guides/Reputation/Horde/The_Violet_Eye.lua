-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/The Violet Eye", {
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
  talk Wravien##16813
  turnin Medivh's Journal##9630 |goto Karazhan - Raid -1,-1
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
  talk Wravien##16813
  accept In Good Hands##9638 |goto Karazhan - Raid -1,-1
step
  talk Archmage Alturus##17613
  accept Contact from Dalaran##9826 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10733 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10734 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10735 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Down the Violet Path##10736 |goto Deadwind Pass 47.24,74.99
step
  talk Gradav##16814
  turnin In Good Hands##9638 |goto Karazhan - Raid -1,-1
step
  talk Archmage Cedric##18165
  turnin Contact from Dalaran##9826 |goto Alterac Mountains 15.61,54.58
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
  talk Gradav##16814
  accept Kamsis##9639 |goto Karazhan - Raid -1,-1
step
  talk Archmage Cedric##18165
  accept Khadgar##9829 |goto Alterac Mountains 15.61,54.58
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10738 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10739 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10740 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Distinguished Service##10741 |goto Deadwind Pass 47.24,74.99
step
  talk Kamsis##16815
  turnin Kamsis##9639 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  turnin Khadgar##9829 |goto Shattrath City 54.75,44.32
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
  talk Kamsis##16815
  accept The Shade of Aran##9640 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  accept Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10725 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10726 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10727 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Eminence Among the Violet Eye##10728 |goto Deadwind Pass 47.24,74.99
step
  talk Kamsis##16815
  turnin The Shade of Aran##9640 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  turnin Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
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
  talk Kamsis##16815
  accept The Master's Terrace##9645 |goto Karazhan - Raid -1,-1
step
  talk Khadgar##18166
  accept The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  talk Archmage Alturus##17613
  turnin The Master's Terrace##9645 |goto Deadwind Pass 47.28,75.21
step
  talk Khadgar##18166
  turnin The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  talk Archmage Alturus##17613
  accept Digging Up the Past##9680 |goto Deadwind Pass 47.28,75.21
step
  talk Khadgar##18166
  accept The Master's Touch##9836 |goto Shattrath City 54.75,44.32
step
  talk Archmage Alturus##17613
  turnin Digging Up the Past##9680 |goto Deadwind Pass 47.28,75.21
step
  talk Medivh##15608
  turnin The Master's Touch##9836 |goto The Black Morass - Dungeon -1,-1
step
  talk Archmage Alturus##17613
  accept A Colleague's Aid##9631 |goto Deadwind Pass 47.28,75.21
step
  talk Medivh##15608
  accept Return to Khadgar##9837 |goto The Black Morass - Dungeon -1,-1
step
  talk Kalynna Lathred##17636
  turnin A Colleague's Aid##9631 |goto Netherstorm 32.22,63.6
step
  talk Khadgar##18166
  turnin Return to Khadgar##9837 |goto Shattrath City 54.75,44.32
step
  talk Kalynna Lathred##17636
  accept Kalynna's Request##9637 |goto Netherstorm 32.22,63.6
step
  talk Khadgar##18166
  accept The Violet Eye##9838 |goto Shattrath City 54.75,44.32
step
  talk Kalynna Lathred##17636
  turnin Kalynna's Request##9637 |goto Netherstorm 32.22,63.6
step
  talk Archmage Alturus##17613
  turnin The Violet Eye##9838 |goto Deadwind Pass 47.28,75.21
step
  talk Kalynna Lathred##17636
  accept Nightbane##9644 |goto Netherstorm 32.22,63.6
step
  talk Archmage Alturus##17613
  accept Assessing the Situation##9840 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  turnin Nightbane##9644 |goto Deadwind Pass 47.28,75.21
step
  talk Koren##16388
  turnin Assessing the Situation##9840 |goto Karazhan - Raid -1,-1
step
  talk Koren##16388
  accept Keanna's Log##9843 |goto Karazhan - Raid -1,-1
step
  talk Archmage Alturus##17613
  turnin Keanna's Log##9843 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept A Demonic Presence##9844 |goto Deadwind Pass 47.28,75.21
step
  note Archmage Alturus wants you to destroy the Demonic Presence at the top of Karazhan.
  kill Prince Malchezaar##15690 |q 9844 |goto Karazhan - Raid -1,-1
step
  talk Archmage Alturus##17613
  turnin A Demonic Presence##9844 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept The New Directive##9860 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Cedric##18165
  turnin The New Directive##9860 |goto Alterac Mountains 15.61,54.58
]])
