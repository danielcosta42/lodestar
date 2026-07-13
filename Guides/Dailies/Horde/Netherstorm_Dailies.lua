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
  get Nether Gas In a Fel Fire Engine |q 10850 |goto Netherstorm 36.73,25.69
step
  note Recover the Salvaged Ethereum Prison Key for Commander Ameer at the Protectorate Watch Post in Netherstorm.
  get A Mission of Mercy |q 10970 |goto Netherstorm 59.5,32.38
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
  get Consortium Crystal Collection |q 10265 |goto Netherstorm 32.44,64.21
step
  note Commander Ameer at the Protectorate Watch Post in Netherstorm wants you to bring him an Ethereum Prisoner I.D. Tag.
  get Ethereum Secrets |q 10971 |goto Netherstorm 59.5,32.38
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
  get A Heap of Ethereals |q 10262 |goto Netherstorm 32.44,64.21
step
  get Ethereum Prisoner I.D. Catalogue |q 10972 |goto Netherstorm 59.5,32.38
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
  get Another Heap of Ethereals |q 10308 |goto Netherstorm 32.44,64.21
step
  talk Nether-Stalker Khay'ji##19880
  turnin Another Heap of Ethereals##10308 |goto Netherstorm 32.44,64.21
]])
