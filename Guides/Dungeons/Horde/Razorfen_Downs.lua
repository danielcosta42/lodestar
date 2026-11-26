-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Razorfen Downs", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "95e0bc39",
}, [[
step
  talk Myriam Moonsinger##12866
  accept A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  kill Charlga Razorflank##4421 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept An Unholy Alliance##6522 |goto Razorfen Kraul - Dungeon -1,-1
step
  talk Belnistrasz##8516
  accept Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Sutara Plainstalker##264078
  accept The Coldbringer's Eye##97196 |goto Mulgore 34.56,23
step
  talk Andrew Brownell##2308
  accept Bring the End##3341 |goto Undercity 74.05,33.31
step
  click Shen'dralar Pylon##577959
  accept Strange Pylons##92914 |goto Shen'dralas 43.65,34.32
step
  note Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs.
  kill Razorfen Battleguard##7873 |q 6626/1 |goto The Barrens 47.3,89.89 |elite
  kill Death's Head Cultist##7872 |q 6626/3 |goto The Barrens 47.86,90.73 |elite
  kill Razorfen Thornweaver##7874 |q 6626 |goto The Barrens 48.12,92.23 |elite
step
  note Recover The Coldbringer's Eye from Razorfen Downs.
  collect The Coldbringer's Eye##276916 |q 97196 |goto Razorfen Downs - Dungeon -1,-1
step
  note Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull.
  collect Skull of the Coldbringer##10420 |q 3341 |goto Razorfen Downs - Dungeon -1,-1 |elite |tip {dropsfrom}Amnennar the Coldbringer
step
  note Explore Shen'dralas in an effort to find other pylons like the one you found.
  goto Shen'dralas 72.76,23.11 |tip Eastern pylon found
step
  talk Myriam Moonsinger##12866
  turnin A Host of Evil##6626 |goto The Barrens 49.01,94.94
step
  note Take the Small Scroll to Varimathras in the Undercity.
  talk Varimathras##2425
  turnin An Unholy Alliance##6522 |goto Undercity 56.25,92.2
step
  note If you agree to aid Belnistrasz, speak with him again and hand the Oathstone he gave you back to him.
  talk Belnistrasz##8516
  turnin Scourge of the Downs##3523 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Sutara Plainstalker##264078
  turnin The Coldbringer's Eye##97196 |goto Mulgore 34.56,23
step
  talk Andrew Brownell##2308
  turnin Bring the End##3341 |goto Undercity 74.05,33.31
step
  talk Mordent Evenshade##253471
  turnin Strange Pylons##92914 |goto Shen'dralas 35.17,46.61
step
  talk Varimathras##2425
  accept An Unholy Alliance##6521 |goto Undercity 56.25,92.2
step
  talk Belnistrasz##8516
  accept Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Mordent Evenshade##253471
  accept Fragments of the Pylons##96010 |goto Shen'dralas 35.17,46.61
step
  note Bring Ambassador Malcin's Head to Varimathras in the Undercity.
  kill Ambassador Malcin##12865 |q 6521 |goto The Barrens 48.4,95.4 |elite
  collect Ambassador Malcin's Head##17009 |q 6521 |goto The Barrens 48.4,95.4
step
  note Escort Belnistrasz to the Quilboar's idol in Razorfen Downs.
  goto The Barrens 50.86,92.87 |tip Protect Belnistrasz while he performs the ritual to shut down the idol
step
  note Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
  collect Pylon Fragment##255656 |q 96010/1 |goto Desolace 68.06,78.91 |tip {dropsfrom}Pylon Shard
  collect Pylon Shard##255657 |q 96010 |goto Desolace 36.18,85.64
step
  talk Varimathras##2425
  turnin An Unholy Alliance##6521 |goto Undercity 56.25,92.2
step
  turnin Extinguishing the Idol##3525 |goto Razorfen Downs - Dungeon -1,-1
step
  talk Mordent Evenshade##253471
  turnin Fragments of the Pylons##96010 |goto Shen'dralas 35.17,46.61
step
  talk Mordent Evenshade##253471
  accept Powering the Pylons##96018 |goto Shen'dralas 35.17,46.61
step
  note Acquire the Mana Sieve from within the temple in Shen'dralas and use it to collect Ancient Mana Crystals. Once you have acquired enough mana, empower the pylons and return to Mordent Evenshade.
  talk Mordent Evenshade##253471
  turnin Powering the Pylons##96018 |goto Shen'dralas 35.17,46.61
step
  talk Mordent Evenshade##253471
  accept A Brief History Lesson##93016 |goto Shen'dralas 35.17,46.61
step
  note Speak with Mordent Evenshade in Shen'dralas for information about the crystals you repaired.
  talk Mordent Evenshade##253471
  turnin A Brief History Lesson##93016 |goto Shen'dralas 35.17,46.61
step
  talk Mordent Evenshade##253471
  accept Meeting the Magister##93394 |goto Shen'dralas 35.17,46.61
step
  note Locate Magister Kirandis inside the temple of Shen'dralas.
  talk Magister Kirandis##254656
  turnin Meeting the Magister##93394 |goto Shen'dralas 47.37,76.46
step
  talk Mithera##254578
  accept Forlorn Gardens##93341 |goto Shen'dralas 53.32,76.02
step
  note Investigate the Forlorn Gardens near Shen'dralas and then return to Mithera at the nearby temple.
  goto Shen'dralas 70.29,79.74 |tip Pedestal examined
step
  talk Mithera##254578
  turnin Forlorn Gardens##93341 |goto Shen'dralas 53.32,76.02
step
  talk Mithera##254578
  accept Word of the Woods##93594 |goto Shen'dralas 53.32,76.02
step
  note Find Woodwyrd in the Forlorn Gardens at Shen'dralas in the Desolace.
  talk Woodwyrd##254674
  turnin Word of the Woods##93594 |goto Shen'dralas 69.66,71.78
step
  talk Woodwyrd##254674
  accept Rot and Regret##93404 |goto Shen'dralas 69.66,71.78
step
  note Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
  talk Woodwyrd##254674 |q 93404 |goto Shen'dralas 69.66,71.78
step
  talk Woodwyrd##254674
  turnin Rot and Regret##93404 |goto Shen'dralas 69.66,71.78
step
  talk Woodwyrd##254674
  accept Passing the Blame##93601 |goto Shen'dralas 69.66,71.78
step
  note Seek out a quilboar of significance at the Bristleback Retreat.
  talk Kog'thug the Brave##253527
  turnin Passing the Blame##93601 |goto Shen'dralas 72.73,31.17
step
  talk Kog'thug the Brave##253527
  accept Agamaggan's Blood##93604 |goto Shen'dralas 72.73,31.17
step
  note Venture to Razorfen Downs and acquire Virulent Blood of Agamaggan, then return it to Kog'thug the Brave at Bristleback Retreat in the Desolace. Kog'thug felt it worth reminding that the Blood of Agamaggan inside Razorfen Kraul would not be sufficient.
  kill Virulent Blood of Agamaggan##255669 |q 93604 |goto The Barrens 49.34,93.64 |elite
  collect Virulent Blood of Agamaggan##260237 |q 93604 |goto The Barrens 49.34,93.64
step
  talk Kog'thug the Brave##253527
  turnin Agamaggan's Blood##93604 |goto Shen'dralas 72.73,31.17
]])
