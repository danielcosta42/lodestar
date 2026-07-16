-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Love is in the Air", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Fenstad Argyle##16108
  accept Dangerous Love##11558 |goto Undercity 66.67,44.72
step
  talk Orok Deathbane##16007
  accept Dearest Elenia,##8900 |goto Orgrimmar 51.29,70.19
step
  talk Temma of the Wells##16008
  accept Dearest Elenia,##8901 |goto Thunder Bluff 44.77,60.13
step
  talk Deathguard Tor##16003
  accept Dearest Elenia,##8902 |goto Tirisfal Glades 60.66,59.48
step
  note Get a Guardian's Moldy Card and bring it to Fenstad Argyle in the Undercity.
  collect Guardian's Moldy Card##22145 |q 11558 |goto Undercity 66.67,44.72
step
  talk Fenstad Argyle##16108
  turnin Dangerous Love##11558 |goto Undercity 66.67,44.72
step
  talk Elenia Haydon##16004
  turnin Dearest Elenia,##8900 |goto Undercity 66.93,45.24
step
  talk Elenia Haydon##16004
  turnin Dearest Elenia,##8901 |goto Undercity 66.93,45.24
step
  talk Elenia Haydon##16004
  turnin Dearest Elenia,##8902 |goto Undercity 66.93,45.24
step
  talk Fenstad Argyle##16108
  accept Dangerous Love##8904 |goto Undercity 66.67,44.72
step
  note Get a Guardian's Moldy Card and bring it to Fenstad Argyle in the Undercity.
  collect Guardian's Moldy Card##22145 |q 8904 |goto Undercity 66.67,44.72
step
  talk Fenstad Argyle##16108
  turnin Dangerous Love##8904 |goto Undercity 66.67,44.72
]])
