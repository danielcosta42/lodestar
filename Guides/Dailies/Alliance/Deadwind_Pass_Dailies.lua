-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Alliance/Deadwind Pass (Dailies)", {
	faction = "Alliance",
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
  get Archmage No More |q 11031 |goto Deadwind Pass 47.24,74.99
step
  get Protector No More |q 11032 |goto Deadwind Pass 47.24,74.99
step
  get Assassin No More |q 11033 |goto Deadwind Pass 47.24,74.99
step
  get Restorer No More |q 11034 |goto Deadwind Pass 47.24,74.99
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
