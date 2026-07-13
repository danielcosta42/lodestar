-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Terokkar Forest (Dailies)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Severin##23042
  accept World of Shadows##11004 |goto Terokkar Forest 64.05,66.88
step
  talk Yuula##23449
  accept Threat from Above##11096 |goto Shattrath City 64.33,42.33
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
  note Severin wants you to venture into Skettis and retrieve 6 Shadow Dusts from the arakkoa that dwell there.
  get World of Shadows |q 11004 |goto Terokkar Forest 64.05,66.88
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
  talk Severin##23042
  turnin World of Shadows##11004 |goto Terokkar Forest 64.05,66.88
step
  talk Sky Commander Adaris##23038
  turnin Ishaal's Almanac##11021 |goto Terokkar Forest 64.09,66.9
step
  talk Yuula##23449
  turnin Threat from Above##11096 |goto Shattrath City 64.33,42.33
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
step
  talk Severin##23042
  accept More Shadow Dust##11006 |goto Terokkar Forest 64.05,66.88
step
  talk Sky Commander Adaris##23038
  accept An Ally in Lower City##11024 |goto Terokkar Forest 64.09,66.9
step
  talk Yuula##23449
  accept To Skettis!##11098 |goto Shattrath City 64.33,42.33
step
  get More Shadow Dust |q 11006 |goto Terokkar Forest 64.05,66.88
step
  talk Severin##23042
  turnin More Shadow Dust##11006 |goto Terokkar Forest 64.05,66.88
step
  talk Rilak the Redeemed##22292
  turnin An Ally in Lower City##11024 |goto Shattrath City 52.54,21.01
step
  talk Sky Sergeant Doryn##23048
  turnin To Skettis!##11098 |goto Terokkar Forest 64.55,66.7
step
  talk Sky Sergeant Doryn##23048
  accept Fires Over Skettis##11008 |goto Terokkar Forest 64.55,66.7
step
  talk Rilak the Redeemed##22292
  accept Countdown to Doom##11028 |goto Shattrath City 52.54,21.01
step
  talk Skyguard Prisoner##23383
  accept Escape from Skettis##11085 |goto Terokkar Forest 75.07,86.3
step
  note Seek out Monstrous Kaliri Eggs on the tops of Skettis dwellings and use the Skyguard Blasting Charges on them. Return to Sky Sergeant Doryn.
  get Fires Over Skettis |q 11008 |goto Terokkar Forest 70.04,80.35
step
  talk Sky Sergeant Doryn##23048
  turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.55,66.7
step
  talk Sky Commander Adaris##23038
  turnin Countdown to Doom##11028 |goto Terokkar Forest 64.09,66.9
step
  talk Sky Sergeant Doryn##23048
  turnin Escape from Skettis##11085 |goto Terokkar Forest 64.55,66.7
step
  talk Hazzik##23306
  accept Hazzik's Bargain##11056 |goto Terokkar Forest 64.23,66.97
step
  note Obtain Hazzik's Package at his dwelling in eastern Skettis and return to him with it.
  get Hazzik's Bargain |q 11056 |goto Terokkar Forest 64.23,66.97
step
  talk Hazzik##23306
  turnin Hazzik's Bargain##11056 |goto Terokkar Forest 64.23,66.97
step
  talk Hazzik##23306
  accept A Shabby Disguise##11029 |goto Terokkar Forest 64.23,66.97
step
  note Use the Shabby Arakkoa Disguise to obtain the Adversarial Bloodlines from Sahaak and return to Hazzik.
  get A Shabby Disguise |q 11029 |goto Terokkar Forest 64.23,66.97
step
  talk Hazzik##23306
  turnin A Shabby Disguise##11029 |goto Terokkar Forest 64.23,66.97
step
  talk Hazzik##23306
  accept Adversarial Blood##11885 |goto Terokkar Forest 64.23,66.97
step
  note Find the Skull Piles in the middle of the summoning circles of Skettis. Summon and defeat each of the descendants by using 10 Time-Lost Scrolls at the Skull Pile. Return to Hazzik at Blackwind Landing.
  kill Darkscreecher Akkarai##23161 |q 11885
step
  talk Hazzik##23306
  turnin Adversarial Blood##11885 |goto Terokkar Forest 64.23,66.97
step
  talk Hazzik##23306
  accept Tokens of the Descendants##11074 |goto Terokkar Forest 64.23,66.97
step
  note Collect Time-Lost Scrolls from the time-lost arakkoa in Skettis and bring them to a Skull Pile inside a summoning circle in Skettis. Summon and defeat the descendants of Terokk's adversaries and return to Hakkiz with Akkarai's Talon, Garokk's Spine, Vekkaz's Scale and Gezzarak's Claw.
  get Tokens of the Descendants |q 11074 |goto Terokkar Forest 64.23,66.97
step
  talk Hazzik##23306
  turnin Tokens of the Descendants##11074 |goto Terokkar Forest 64.23,66.97
]])
