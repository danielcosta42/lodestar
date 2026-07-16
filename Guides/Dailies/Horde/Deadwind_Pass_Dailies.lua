-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Deadwind Pass (Dailies)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Archmage Leryda##18253
  accept Archmage No More##11031 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Protector No More##11032 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Assassin No More##11033 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  accept Restorer No More##11034 |goto Deadwind Pass 47.24,74.99
step
  collect Violet Signet of the Archmage##29287 |q 11031 |goto Deadwind Pass 47.24,74.99
step
  collect Violet Signet of the Great Protector##29279 |q 11032 |goto Deadwind Pass 47.24,74.99
step
  collect Violet Signet of the Master Assassin##29283 |q 11033 |goto Deadwind Pass 47.24,74.99
step
  collect Violet Signet of the Grand Restorer##29290 |q 11034 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Archmage No More##11031 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Protector No More##11032 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Assassin No More##11033 |goto Deadwind Pass 47.24,74.99
step
  talk Archmage Leryda##18253
  turnin Restorer No More##11034 |goto Deadwind Pass 47.24,74.99
]])
