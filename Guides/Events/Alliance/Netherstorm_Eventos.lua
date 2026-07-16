-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Netherstorm (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Spymaster Thalodien##19468
  accept Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  talk Maxx A. Million Mk. V##19589
  accept Mark V is Alive!##10191 |goto Netherstorm 31.59,56.63
step
  talk Anchorite Karja##19467
  accept Assisting the Consortium##10263 |goto Netherstorm 32.04,64.18
step
  talk Thadell##20464
  accept Needs More Cowbell##10334 |goto Netherstorm 57.72,84.94
step
  talk Gahruj##20066
  accept Drijya Needs Your Help##10311 |goto Netherstorm 46.67,56.95
step
  talk Commander Ameer##20448
  accept The Ethereum##10339 |goto Netherstorm 59.5,32.38
step
  talk Captured Protectorate Vanguard##20763
  accept Escape from the Staging Grounds##10425 |goto Netherstorm 57.3,37.71
step
  note Spymaster Thalodien at Area 52 wants you to go to the outskirts of Manaforge B'naar and retrieve the B'naar Personnel Roster from Captain Arathyn.
  collect B'naar Personnel Roster##28376 |q 10189 |goto Netherstorm 27.24,65.44 |tip {dropsfrom}Captain Arathyn
step
  note Commander Ameer wants you to kill 5 Ethereum Assassins, 5 Ethereum Shocktroopers, 2 Ethereum Researchers and Captain Zovax then activate Ethereum Transponder Zeta.
  kill Ethereum Assassin##20452 |q 10339 |goto Netherstorm 56.71,38.2
step
  talk Spymaster Thalodien##19468
  turnin Manaforge B'naar##10189 |goto Netherstorm 32.0,64.07
step
  talk Bot-Specialist Alley##19578
  turnin Mark V is Alive!##10191 |goto Netherstorm 31.51,56.59
step
  talk Nether-Stalker Khay'ji##19880
  turnin Assisting the Consortium##10263 |goto Netherstorm 32.44,64.21
step
  talk Bessy##20415
  turnin Needs More Cowbell##10334 |goto Netherstorm 59.15,78.79
step
  talk Drijya##20281
  turnin Drijya Needs Your Help##10311 |goto Netherstorm 48.11,63.5
step
  talk Image of Commander Ameer##20482
  turnin The Ethereum##10339 |goto Netherstorm 56.82,38.7
step
  talk Commander Ameer##20448
  turnin Escape from the Staging Grounds##10425 |goto Netherstorm 59.5,32.38
step
  talk Spymaster Thalodien##19468
  accept High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Magistrix Larynna##19469
  accept Bloodgem Crystals##10204 |goto Netherstorm 32.05,64.0
step
  talk Nether-Stalker Khay'ji##19880
  accept Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Bessy##20415
  accept When the Cows Come Home##10337 |goto Netherstorm 59.15,78.79
step
  talk Drijya##20281
  accept Sabotage the Warp-Gate!##10310 |goto Netherstorm 48.11,63.5
step
  talk Image of Commander Ameer##20482
  accept Ethereum Data##10384 |goto Netherstorm 56.82,38.7
step
  note Spymaster Thalodien at Area 52 wants you to go to Manaforge B'naar and slay 2 Sunfury Warp-Masters, 6 Sunfury Warp-Engineers and 8 Sunfury Geologists.
  kill Sunfury Warp-Master##18857 |q 10193 |goto Netherstorm 23.85,70.92
step
  note Obtain an Arklon Crystal Artifact and return it to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  collect Arklon Crystal Artifact##28829 |q 10265 |goto Netherstorm 42.46,72.75 |tip {dropsfrom}Pentatharon
step
  note The Image of Commander Ameer at the Ethereum Staging Grounds - Ethereum Transponder Zeta - wants you to recover the Ethereum Data Cell.
  collect Ethereum Data Cell##29582 |q 10384 |goto Netherstorm 55.77,39.89 |tip {dropsfrom}Ethereum Data Cell
step
  talk Spymaster Thalodien##19468
  turnin High Value Targets##10193 |goto Netherstorm 32.0,64.07
step
  talk Magistrix Larynna##19469
  turnin Bloodgem Crystals##10204 |goto Netherstorm 32.05,64.0
step
  talk Nether-Stalker Khay'ji##19880
  turnin Consortium Crystal Collection##10265 |goto Netherstorm 32.44,64.21
step
  talk Thadell##20464
  turnin When the Cows Come Home##10337 |goto Netherstorm 57.72,84.94
step
  talk Gahruj##20066
  turnin Sabotage the Warp-Gate!##10310 |goto Netherstorm 46.67,56.95
step
  talk Image of Commander Ameer##20482
  turnin Ethereum Data##10384 |goto Netherstorm 56.82,38.7
step
  talk Nether-Stalker Khay'ji##19880
  accept A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Spymaster Thalodien##19468
  accept Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
step
  talk Image of Commander Ameer##20482
  accept Potential for Brain Damage = High##10385 |goto Netherstorm 56.82,38.7
step
  note Collect 10 Zaxxis Insignias and return them to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  collect 10 Zaxxis Insignia##29209 |q 10262 |goto Netherstorm 30.13,76.56 |tip {dropsfrom}Zaxxis Raider, Warp-Raider Nesaad, Zaxxis Stalker
step
  note Return to Manaforge B'naar and obtain the B'naar Access Crystal from Overseer Theredis. Use it at the B'naar Control Console to shut it down, then report back to Spymaster Thalodien.
  kill B'naar Control Console##20209 |q 10329
step
  note The Image of Commander Ameer at the Ethereum Staging Grounds - Ethereum Transponder Zeta - wants you to recover 15 pieces of Ethereum Relay Data.
  collect Ethereum Relay Data##29459 |q 10385 |goto Netherstorm 56.08,41.03 |tip {dropsfrom}Ethereum Relay
step
  talk Nether-Stalker Khay'ji##19880
  turnin A Heap of Ethereals##10262 |goto Netherstorm 32.44,64.21
step
  talk Spymaster Thalodien##19468
  turnin Shutting Down Manaforge B'naar##10329 |goto Netherstorm 32.0,64.07
step
  talk Image of Commander Ameer##20482
  turnin Potential for Brain Damage = High##10385 |goto Netherstorm 56.82,38.7
step
  talk Spymaster Thalodien##19468
  accept Stealth Flight##10194 |goto Netherstorm 32.0,64.07
step
  talk Nether-Stalker Khay'ji##19880
  accept Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  talk Image of Commander Ameer##20482
  accept S-A-B-O-T-A-G-E##10405 |goto Netherstorm 56.82,38.7
step
  note Kill Warp-Raider Nesaad and then return to Nether-Stalker Khay'ji at Area 52 in the Netherstorm.
  kill Warp-Raider Nesaad##19641 |q 10205 |goto Netherstorm 28.36,79.45
step
  note The Image of Commander Ameer at the Ethereum Staging Grounds - Ethereum Transponder Zeta - wants you to recover 1 Prepared Ethereum Wrapping.
  collect Prepared Ethereum Wrapping##29591 |q 10405 |goto Netherstorm 55.75,42.87 |tip {dropsfrom}Ethereum Archon, Ethereum Overlord
step
  talk Veronia##20162
  turnin Stealth Flight##10194 |goto Netherstorm 33.81,64.23
step
  talk Nether-Stalker Khay'ji##19880
  turnin Warp-Raider Nesaad##10205 |goto Netherstorm 32.44,64.21
step
  talk Image of Commander Ameer##20482
  turnin S-A-B-O-T-A-G-E##10405 |goto Netherstorm 56.82,38.7
step
  talk Nether-Stalker Khay'ji##19880
  accept Request for Assistance##10266 |goto Netherstorm 32.44,64.21
step
  talk Veronia##20162
  accept Behind Enemy Lines##10652 |goto Netherstorm 33.81,64.23
step
  talk Image of Commander Ameer##20482
  accept Delivering the Message##10406 |goto Netherstorm 56.82,38.7
step
  talk Gahruj##20066
  turnin Request for Assistance##10266 |goto Netherstorm 46.67,56.95
step
  talk Caledis Brightdawn##19840
  turnin Behind Enemy Lines##10652 |goto Netherstorm 48.24,86.6
step
  talk Image of Commander Ameer##20482
  turnin Delivering the Message##10406 |goto Netherstorm 56.82,38.7
step
  talk Caledis Brightdawn##19840
  accept A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  accept Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  note Obtain a set of Sunfury Arcanist Robes, one pair of Sunfury Researcher Gloves and a Sunfury Guardsman Medallion and bring them to Caledis Brightdawn at Manaforge Coruu in Netherstorm.
  collect Sunfury Researcher Gloves##28636 |q 10197 |goto Netherstorm 53.02,83.05 |tip {dropsfrom}Sunfury Researcher
step
  note Collect 10 Boxes of Surveying Equipment and return them to Gahruj at the Midrealm Post inside Eco-Dome Midrealm in the Netherstorm.
  collect 10 Box of Surveying Equipment##28913 |q 10267 |goto Netherstorm 58.82,65.76 |tip {dropsfrom}Box of Surveying Equipment
step
  talk Caledis Brightdawn##19840
  turnin A Convincing Disguise##10197 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  turnin Rightful Repossession##10267 |goto Netherstorm 46.67,56.95
step
  talk Caledis Brightdawn##19840
  accept Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Gahruj##20066
  accept An Audience with the Prince##10268 |goto Netherstorm 46.67,56.95
step
  talk Caledis Brightdawn##19840
  turnin Information Gathering##10198 |goto Netherstorm 48.24,86.6
step
  talk Image of Nexus-Prince Haramad##20084
  turnin An Audience with the Prince##10268 |goto Netherstorm 45.87,35.96
step
  talk Image of Nexus-Prince Haramad##20084
  accept Triangulation Point One##10269 |goto Netherstorm 45.87,35.96
step
  talk Dealer Hazzin##20092
  turnin Triangulation Point One##10269 |goto Netherstorm 58.35,31.26
step
  talk Dealer Hazzin##20092
  accept Triangulation Point Two##10275 |goto Netherstorm 58.35,31.26
step
  talk Wind Trader Tuluman##20112
  turnin Triangulation Point Two##10275 |goto Netherstorm 34.62,37.95
]])
