-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Fishing (Dailies)", {
	author = "Lodestar Generator",
}, [[
step
  talk Old Man Barlo##25580
  accept Crocolisks in the City##11665 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  accept Bait Bandits##11666 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  accept The One That Got Away##11667 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  accept Shrimpin' Ain't Easy##11668 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  accept Felblood Fillet##11669 |goto Terokkar Forest 38.72,12.8
step
  note Bring a Baby Crocolisk to Old Man Barlo. You can find him fishing northeast of Shattrath City by Silmyr Lake.
  get Crocolisks in the City |q 11665 |goto Terokkar Forest 38.72,12.8
step
  note Bring a Blackfin Darter to Old Man Barlo. You can find him fishing northeast of Shattrath City by Silmyr Lake.
  get Bait Bandits |q 11666 |goto Terokkar Forest 38.72,12.8
step
  note Catch the World's Largest Mudfish and bring it to Old Man Barlo. You can find him fishing northeast of Shattrath City by Silmyr Lake.
  get The One That Got Away |q 11667 |goto Terokkar Forest 38.72,12.8
step
  note Bring 10 Giant Freshwater Shrimp to Old Man Barlo. You can find him fishing northeast of Shattrath City by Silmyr Lake.
  get Shrimpin' Ain't Easy |q 11668 |goto Terokkar Forest 38.72,12.8
step
  note Bring a Monstrous Felblood Snapper to Old Man Barlo. You can find him fishing northeast of Shattrath City by Silmyr Lake.
  get Felblood Fillet |q 11669 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  turnin Crocolisks in the City##11665 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  turnin Bait Bandits##11666 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  turnin The One That Got Away##11667 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  turnin Shrimpin' Ain't Easy##11668 |goto Terokkar Forest 38.72,12.8
step
  talk Old Man Barlo##25580
  turnin Felblood Fillet##11669 |goto Terokkar Forest 38.72,12.8
]])
