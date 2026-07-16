-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Netherstorm (Dailies)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Anchorite Karja##19467
  accept Assisting the Consortium##10263 |goto Netherstorm 32.04,64.18
step
  talk Inactive Fel Reaver##22293
  accept Nether Gas In a Fel Fire Engine##10850 |goto Netherstorm 36.73,25.69
step
  talk Commander Ameer##20448
  accept A Mission of Mercy##10970 |goto Netherstorm 59.5,32.38
step
  collect Condensed Nether Gas##31653 |q 10850 |goto Netherstorm 37.31,28.06 |tip {dropsfrom}Gan'arg Mekgineer
step
  note Recover the Salvaged Ethereum Prison Key for Commander Ameer at the Protectorate Watch Post in Netherstorm.
  collect Salvaged Ethereum Prison Key##31956 |q 10970 |goto Netherstorm 56.71,38.2 |tip {dropsfrom}Ethereum Assassin, Ethereum Shocktrooper, Nexus-King Salhadaar
step
  talk Nether-Stalker Khay'ji##19880
  turnin Assisting the Consortium##10263 |goto Netherstorm 32.44,64.21
step
  talk Inactive Fel Reaver##22293
  turnin Nether Gas In a Fel Fire Engine##10850 |goto Netherstorm 36.73,25.69
step
  talk Commander Ameer##20448
  turnin A Mission of Mercy##10970 |goto Netherstorm 59.5,32.38
step
  talk Nether-Stalker Khay'ji##19880
  accept Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Commander Ameer##20448
  accept Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  note Obtain an Arklon Crystal Artifact and return it to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  collect Arklon Crystal Artifact##28829 |q 10265 |goto Netherstorm 42.46,72.75 |tip {dropsfrom}Pentatharon
step
  note Commander Ameer at the Protectorate Watch Post in Netherstorm wants you to bring him an Ethereum Prisoner I.D. Tag.
  collect Ethereum Prisoner I.D. Tag##31957 |q 10971 |goto Netherstorm 59.5,32.38 |tip {dropsfrom}Porfus the Gem Gorger, Armbreaker Huffaz, Fel Tinkerer Zortan
step
  talk Nether-Stalker Khay'ji##19880
  turnin Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Commander Ameer##20448
  turnin Ethereum Secrets##10971 |goto Netherstorm 59.5,32.38
step
  talk Nether-Stalker Khay'ji##19880
  accept A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Commander Ameer##20448
  accept Ethereum Prisoner I.D. Catalogue##10972 |goto Netherstorm 59.5,32.38
step
  note Collect 10 Zaxxis Insignias and return them to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  collect 10 Zaxxis Insignia##29209 |q 10262 |goto Netherstorm 30.13,76.56 |tip {dropsfrom}Zaxxis Raider, Warp-Raider Nesaad, Zaxxis Stalker
step
  collect Ethereum Prisoner I.D. Tag##31957 |q 10972 |goto Netherstorm 59.5,32.38 |tip {dropsfrom}Porfus the Gem Gorger, Armbreaker Huffaz, Fel Tinkerer Zortan
step
  talk Nether-Stalker Khay'ji##19880
  turnin A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Commander Ameer##20448
  turnin Ethereum Prisoner I.D. Catalogue##10972 |goto Netherstorm 59.5,32.38
step
  talk Nether-Stalker Khay'ji##19880
  accept Another Heap of Ethereals##10308 |goto Netherstorm 32.44,64.21
step
  collect Zaxxis Insignia##29209 |q 10308 |goto Netherstorm 30.13,76.56 |tip {dropsfrom}Zaxxis Raider, Warp-Raider Nesaad, Zaxxis Stalker
step
  talk Nether-Stalker Khay'ji##19880
  turnin Another Heap of Ethereals##10308 |goto Netherstorm 32.44,64.21
]])
