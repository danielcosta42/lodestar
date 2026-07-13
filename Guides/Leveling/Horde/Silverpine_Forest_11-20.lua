-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Silverpine Forest (11-20)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Ghostlands (11-20)",
}, [[
step
  note {fp}Karos Razok
  goto Silverpine Forest 45.62,42.6 |tip {vendor}
step
  talk Dalar Dawnweaver##1938
  accept Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept Lost Deathstalkers##428 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  accept The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  note Kill rot hide gnolls at the Dead Fields.
  get The Dead Fields |q 437 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  accept The Engraved Ring##440 |goto Silverpine Forest 43.42,40.86
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##447 |goto Silverpine Forest 42.8,40.86
step
  note Collect 6 Grizzled Bear Hearts and 6 samples of Skittering Blood and deliver them to Master Apothecary Faranell in the Undercity.
  get A Recipe For Death |q 447 |goto Silverpine Forest 42.8,40.86
step
  talk Apothecary Renferrel##1937
  accept Report to Hadrec##448 |goto Silverpine Forest 42.8,40.86
step
  talk Apothecary Renferrel##1937
  accept A Recipe For Death##451 |goto Silverpine Forest 42.8,40.86
step
  note Bring 6 samples of Lake Creeper Moss, 6 samples of Lake Skulker Moss and a Hardened Tumor to Master Apothecary Faranell in the Undercity.
  get A Recipe For Death |q 451 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  accept Border Crossings##477 |goto Silverpine Forest 43.98,40.93
step
  talk Shadow Priest Allister##2121
  accept Dalar's Analysis##481 |goto Silverpine Forest 43.98,40.93
step
  talk Apothecary Renferrel##1937
  accept Journey to Hillsbrad Foothills##493 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  accept Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  accept Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
step
  note Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher.
  get Arugal Must Die |q 1014 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept Deathstalkers in Shadowfang##1098 |goto Silverpine Forest 43.42,40.86
step
  only Undead
  talk Deathguard Podrig##6389
  accept Supplying the Sepulcher##6321 |goto Silverpine Forest 43.42,41.68
step
  note Locate Beren's Peril, then kill 6 Ravenclaw Drudgers and 6 Ravenclaw Guardians, then return to Shadow Priest Allister at the Sepulcher.
  kill Ravenclaw Drudger##1974 |q 516 |goto Silverpine Forest 59.14,70.81
step
  talk Deathstalker Vincent##4444
  turnin Deathstalkers in Shadowfang##1098 |goto Shadowfang Keep - Dungeon -1,-1 |tip {turninat}Shadowfang Keep - Dungeon
step
  talk Rane Yorick##1950
  turnin Lost Deathstalkers##428 |goto Silverpine Forest 53.46,13.43
step
  talk Apothecary Lydon##2216
  turnin Journey to Hillsbrad Foothills##493 |goto Hillsbrad Foothills 61.44,19.06 |tip {turninat}Hillsbrad Foothills
step
  talk Rane Yorick##1950
  accept Wild Hearts##429 |goto Silverpine Forest 53.46,13.43
step
  note Gather 6 discolored worg hearts and bring them to Apothecary Renferrel at the Sepulcher.
  get Wild Hearts |q 429 |goto Silverpine Forest 53.46,13.43
step
  talk Deathstalker Erland##1978
  accept Escorting Erland##435 |goto Silverpine Forest 56.18,9.18
step
  note Dalar Dawnweaver at the Sepulcher wants you to kill 5 Moonrage Whitescalps.
  kill Moonrage Whitescalp##1769 |q 421 |goto Silverpine Forest 52.86,26.71
step
  talk High Executor Hadrec##1952
  turnin Report to Hadrec##448 |goto Silverpine Forest 43.42,40.86
step
  talk Dalar Dawnweaver##1938
  turnin Dalar's Analysis##481 |goto Silverpine Forest 44.2,39.81
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##451 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Shadow Priest Allister##2121
  turnin Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Prove Your Worth##421 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  turnin Wild Hearts##429 |goto Silverpine Forest 42.8,40.86
step
  only Undead
  talk Karos Razok##2226
  turnin Supplying the Sepulcher##6321 |goto Silverpine Forest 45.62,42.6
step
  talk High Executor Hadrec##1952
  turnin The Dead Fields##437 |goto Silverpine Forest 43.42,40.86
step
  talk Dalar Dawnweaver##1938
  turnin Arugal Must Die##1014 |goto Silverpine Forest 44.2,39.81
step
  talk Magistrate Sevren##1499
  turnin The Engraved Ring##440 |goto Tirisfal Glades 61.26,50.84 |tip {turninat}Tirisfal Glades
step
  turnin Border Crossings##477 |goto Silverpine Forest 49.89,60.33
step
  talk Master Apothecary Faranell##2055
  turnin A Recipe For Death##447 |goto Undercity 48.82,69.28 |tip {turninat}Undercity
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  note Retrieve the Remedy of Arugal for Dalar Dawnweaver at the Sepulcher.
  get Arugal's Folly |q 422 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  accept Return to Quinn##430 |goto Silverpine Forest 42.8,40.86
step
  talk High Executor Hadrec##1952
  accept The Decrepit Ferry##438 |goto Silverpine Forest 43.42,40.86
step
  talk High Executor Hadrec##1952
  accept Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  note Bring Thule's Head to High Executor Hadrec at the Sepulcher.
  get Assault on Fenris Isle |q 442 |goto Silverpine Forest 43.42,40.86
step
  talk Dalar Dawnweaver##1938
  accept Dalaran's Intentions##482 |goto Silverpine Forest 44.2,39.81
step
  only Undead
  talk Karos Razok##2226
  accept Ride to the Undercity##6323 |goto Silverpine Forest 45.62,42.6
step
  talk Quinn Yorick##1951
  turnin Return to Quinn##430 |goto Silverpine Forest 53.43,12.59
step
  talk Rane Yorick##1950
  turnin Escorting Erland##435 |goto Silverpine Forest 53.46,13.43
step
  talk Rane Yorick##1950
  accept Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  note Kill Ivar the Foul, and bring Ivar's Head to Rane Yorick at the Ivar Patch.
  get Ivar the Foul |q 425 |goto Silverpine Forest 53.46,13.43
step
  talk Rane Yorick##1950
  accept The Deathstalkers' Report##449 |goto Silverpine Forest 53.46,13.43
step
  talk High Executor Hadrec##1952
  turnin The Deathstalkers' Report##449 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  turnin Dalaran's Intentions##482 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##422 |goto Silverpine Forest 44.2,39.81
step
  only Undead
  talk Gordon Wendham##4556
  turnin Ride to the Undercity##6323 |goto Undercity 61.49,41.79 |tip {turninat}Undercity
step
  turnin The Decrepit Ferry##438 |goto Silverpine Forest 58.44,34.9
step
  talk High Executor Hadrec##1952
  turnin Assault on Fenris Isle##442 |goto Silverpine Forest 43.42,40.86
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  note Bring 6 Glutton Shackles and 3 Darksoul Shackles to Dalar Dawnweaver at the Sepulcher.
  get Arugal's Folly |q 423 |goto Silverpine Forest 44.2,39.81
step
  talk High Executor Hadrec##1952
  accept Rot Hide Ichor##443 |goto Silverpine Forest 43.42,40.86
step
  note Bring 8 bottles of rot hide ichor to Apothecary Renferrel at the Sepulcher.
  get Rot Hide Ichor |q 443 |goto Silverpine Forest 43.42,40.86
step
  talk Shadow Priest Allister##2121
  accept Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  note Obtain 8 Dalaran Pendants for Shadow Priest Allister at the Sepulcher.
  get Ambermill Investigations |q 479 |goto Silverpine Forest 43.98,40.93
step
  talk High Executor Hadrec##1952
  accept Speak with Renferrel##3221 |goto Silverpine Forest 43.42,40.86
step
  talk Rane Yorick##1950
  turnin Ivar the Foul##425 |goto Silverpine Forest 53.46,13.43
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##423 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  turnin Speak with Renferrel##3221 |goto Silverpine Forest 42.8,40.86
step
  talk Apothecary Renferrel##1937
  turnin Rot Hide Ichor##443 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  turnin Ambermill Investigations##479 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  note Kill Grimson the Pale and bring his head to Dalar Dawnweaver at the Sepulcher.
  get Arugal's Folly |q 424 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Renferrel##1937
  accept Rot Hide Origins##444 |goto Silverpine Forest 42.8,40.86
step
  talk Shadow Priest Allister##2121
  accept The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  note Kill the Dalaran archmage, then retrieve his staff for Shadow Priest Allister at the Sepulcher.
  get The Weaver |q 480 |goto Silverpine Forest 43.98,40.93
step
  talk Apothecary Renferrel##1937
  accept Zinge's Delivery##1359 |goto Silverpine Forest 42.8,40.86
step
  talk Bethor Iceshard##1498
  turnin Rot Hide Origins##444 |goto Undercity 84.07,17.45 |tip {turninat}Undercity
step
  talk Shadow Priest Allister##2121
  turnin The Weaver##480 |goto Silverpine Forest 43.98,40.93
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##424 |goto Silverpine Forest 44.2,39.81
step
  talk Apothecary Zinge##5204
  turnin Zinge's Delivery##1359 |goto Undercity 50.14,67.97 |tip {turninat}Undercity
step
  talk Dalar Dawnweaver##1938
  accept Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  note Bring 6 Pyrewood Shackles to Dalar Dawnweaver at the Sepulcher.
  get Arugal's Folly |q 99 |goto Silverpine Forest 44.2,39.81
step
  talk Dalar Dawnweaver##1938
  turnin Arugal's Folly##99 |goto Silverpine Forest 44.2,39.81
step
  note {travel}Ghostlands
  goto Ghostlands 47.34,29.26
]])
