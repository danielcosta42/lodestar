-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Desolace (42-45)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Tanaris (43-49)",
	rev = "42043002",
}, [[
step
  ding 36
step
  click Shen'dralar Pylon##577959
  accept Strange Pylons##92914 |goto Shen'dralas 43.65,34.32
step
  only completed(93066)
  talk Hagiak##253851
  accept Long-Term Solutions##93072 |goto Shen'dralas 59.27,53.93
step
  talk Rokren##254040
  accept Going Home##93125 |goto Shen'dralas 34.13,77.89
step
  only completed(1375) level>=42
  talk Warug##5398
  accept Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  only level>=42
  talk Umarak##253066
  accept Khan Hratha##96222 |goto Desolace 43.47,78.94
step
  only completed(1375) haveq(1381)
  note Maintain your Magram reputation, and bring the Maraudine Key Fragment to Warug in the Magram Village in Desolace.
  kill Khan Hratha##5402 |q 1381 |goto Desolace 29.55,52 |elite
  collect Maraudine Key Fragment##6077 |q 1381 |goto Desolace 29.55,52
step
  only haveq(96222)
  note Bring the Maraudine Key Fragment to Umarak in the Desolace.
  kill Khan Hratha##5402 |q 96222 |goto Desolace 29.55,52 |elite
  collect Maraudine Key Fragment##6077 |q 96222 |goto Desolace 29.55,52
step
  only haveq(96222)
  talk Umarak##253066
  turnin Khan Hratha##96222 |goto Desolace 43.47,78.94
step
  only completed(1375) haveq(1381)
  talk Warug##5398
  turnin Khan Hratha##1381 |goto Desolace 74.97,68.16
step
  only completed(93224,93225) not completed(93226) not completed(93227) not completed(94873) not haveq(93226) not haveq(93227) not haveq(94873)
  talk Gurda Wildmane##5412
  accept Buying Friendship: Magram##94872 |goto Desolace 56.29,59.68
step
  only completed(93224,93225) not completed(93226) not completed(93227) not completed(94873) not haveq(93226) not haveq(93227) not haveq(94873)
  note Bring the Totem Tote to the Magram Quartermaster at Magram Village in the Desolace to significantly increase your reputation with that clan. You must be of at least Neutral standing with the Magram Clan Centaur.
  talk Gorhak##253139
  turnin Buying Friendship: Magram##94872 |goto Desolace 66.25,79.42
step
  only hasitem(260347)
  use Tattered Journal##260347 |tip It starts the quest.
  accept Tattered Journal##93644
step
  only haveq(93644)
  note The text suggests the author of this journal may be somewhere in Shen'dralas.
  collect Tattered Journal##260347 |q 93644 |goto Desolace 63.87,90.46 |tip {dropsfrom}Outcast Necromancer, Magram Necromancer
step
  note Maintain your reputation with the Gelkis, and escort Rokren out of the Outcast Hideaway. Then inform Nerlokh near the Valley of Bones about what happened.
  talk Nerlokh##253177
  turnin Going Home##93125 |goto Shen'dralas 20.93,22.68 |tip {turninat}Shen'dralas
step
  only haveq(93644)
  talk Mordent Evenshade##253471
  turnin Tattered Journal##93644 |goto Shen'dralas 35.17,46.61 |tip {turninat}Shen'dralas
step
  only completed(93066)
  note Maintain your reputation with the Magram clan and slay 2 Outcast Scouts, 6 Outcast Marauders, and 8 Outcast Necromancers then return to Hagiak at the Magram Front.
  kill Outcast Scout##254283 |q 93072/1 |goto Shen'dralas 37.43,65.36
  kill Outcast Marauder##254284 |q 93072/2 |goto Shen'dralas 37.59,68.27
  kill Outcast Necromancer##11559 |q 93072 |goto Desolace 63.87,90.46
step
  only completed(93066)
  talk Hagiak##253851
  turnin Long-Term Solutions##93072 |goto Shen'dralas 59.27,53.93 |tip {turninat}Shen'dralas
step
  only completed(93604)
  talk Kog'thug the Brave##253527
  accept Not on Squealing Terms##93606 |goto Shen'dralas 72.73,31.17
step
  only completed(93604)
  note Quell the quilboar's quarrel by bringing Quolga a Benevolent Bouquet and the Virulent Blood of Agamaggan. The flowers to make the bouquet can be acquired at the Forlorn Gardens, near Shen'dralas in the Desolace.
  collect Benevolent Bouquet##260244 |q 93606 |goto Shen'dralas 72.73,31.17
step
  note Explore Shen'dralas in an effort to find other pylons like the one you found.
  goto Shen'dralas 72.76,23.11 |tip Eastern pylon found
step
  only completed(93604)
  talk Quolga the Wise##255678
  turnin Not on Squealing Terms##93606 |goto Shen'dralas 58.15,14.78 |tip {turninat}Shen'dralas
step
  talk Mordent Evenshade##253471
  turnin Strange Pylons##92914 |goto Shen'dralas 35.17,46.61 |tip {turninat}Shen'dralas
step
  talk Mordent Evenshade##253471
  accept Fragments of the Pylons##96010 |goto Shen'dralas 35.17,46.61
step
  note Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
  collect Pylon Fragment##255656 |q 96010/1 |goto Desolace 68.06,78.91 |tip {dropsfrom}Pylon Shard
  collect Pylon Shard##255657 |q 96010 |goto Desolace 36.18,85.64
step
  talk Mordent Evenshade##253471
  turnin Fragments of the Pylons##96010 |goto Shen'dralas 35.17,46.61 |tip {turninat}Shen'dralas
step
  talk Mordent Evenshade##253471
  accept Powering the Pylons##96018 |goto Shen'dralas 35.17,46.61
step
  note Acquire the Mana Sieve from within the temple in Shen'dralas and use it to collect Ancient Mana Crystals. Once you have acquired enough mana, empower the pylons and return to Mordent Evenshade.
  talk Mordent Evenshade##253471
  turnin Powering the Pylons##96018 |goto Shen'dralas 35.17,46.61 |tip {turninat}Shen'dralas
step
  talk Mordent Evenshade##253471
  accept A Brief History Lesson##93016 |goto Shen'dralas 35.17,46.61
step
  note Speak with Mordent Evenshade in Shen'dralas for information about the crystals you repaired.
  talk Mordent Evenshade##253471
  turnin A Brief History Lesson##93016 |goto Shen'dralas 35.17,46.61 |tip {turninat}Shen'dralas
step
  talk Mordent Evenshade##253471
  accept Meeting the Magister##93394 |goto Shen'dralas 35.17,46.61
step
  note Locate Magister Kirandis inside the temple of Shen'dralas.
  talk Magister Kirandis##254656
  turnin Meeting the Magister##93394 |goto Shen'dralas 47.37,76.46 |tip {turninat}Shen'dralas
step
  talk Historian Biraxas##255486
  accept A Heart of Crystal##99257 |goto Shen'dralas 46,78.22
step
  talk Vindael##254717
  accept Phantasmal Problems##93450 |goto Shen'dralas 42,79.02
step
  note Take Vindael's unfinished sword and figure out a way to usher it into the spirit realm, then return the Phantasmal Blade to him at Shen'dralas.
  collect Phantasmal Blade##258735 |q 93450 |goto Shen'dralas 42,79.02
step
  talk Vindael##254717
  turnin Phantasmal Problems##93450 |goto Shen'dralas 42,79.02 |tip {turninat}Shen'dralas
step
  talk Mithera##254578
  accept Forlorn Gardens##93341 |goto Shen'dralas 53.32,76.02
step
  note Investigate the Forlorn Gardens near Shen'dralas and then return to Mithera at the nearby temple.
  goto Shen'dralas 70.29,79.74 |tip Pedestal examined
step
  talk Mithera##254578
  turnin Forlorn Gardens##93341 |goto Shen'dralas 53.32,76.02 |tip {turninat}Shen'dralas
step
  talk Mithera##254578
  accept What They've Done to My Peonies##93362 |goto Shen'dralas 53.32,76.02
step
  talk Mithera##254578
  accept Word of the Woods##93594 |goto Shen'dralas 53.32,76.02
step
  note Cull plants in the Forlorn Garden and then return to Mithera at Shen'dralas.
  kill Rowdy Rose##254566 |q 93362/1 |goto Shen'dralas 66.35,75.33
  kill Terrible Tulip##254567 |q 93362/2 |goto Shen'dralas 67.7,75.32
  kill Malevolent Marigold##254572 |q 93362 |goto Shen'dralas 66.4,66.83
step
  note Find Woodwyrd in the Forlorn Gardens at Shen'dralas in the Desolace.
  talk Woodwyrd##254674
  turnin Word of the Woods##93594 |goto Shen'dralas 69.66,71.78 |tip {turninat}Shen'dralas
step
  talk Woodwyrd##254674
  accept Rot and Regret##93404 |goto Shen'dralas 69.66,71.78
step
  note Venture to Maraudon and recover a Vial of Earth Song Water and return it to Woodwyrd at the Forlorn Gardens in Desolace.
  talk Woodwyrd##254674 |q 93404 |goto Shen'dralas 69.66,71.78
step
  talk Woodwyrd##254674
  turnin Rot and Regret##93404 |goto Shen'dralas 69.66,71.78 |tip {turninat}Shen'dralas
step
  talk Woodwyrd##254674
  accept Passing the Blame##93601 |goto Shen'dralas 69.66,71.78
step
  talk Mithera##254578
  turnin What They've Done to My Peonies##93362 |goto Shen'dralas 53.32,76.02 |tip {turninat}Shen'dralas
step
  note Slay a Decrepit Pylon Protector for their Depleted Crystal Heart and bring it to Historian Biraxas within the temple of Shen'dralas.
  collect Depleted Crystal Heart##286647 |q 99257 |goto Shen'dralas 47.54,30.77 |tip {dropsfrom}Decrepit Pylon Protector
step
  note Seek out a quilboar of significance at the Bristleback Retreat.
  talk Kog'thug the Brave##253527
  turnin Passing the Blame##93601 |goto Shen'dralas 72.73,31.17 |tip {turninat}Shen'dralas
step
  talk Historian Biraxas##255486
  turnin A Heart of Crystal##99257 |goto Shen'dralas 46,78.22 |tip {turninat}Shen'dralas
step
  only level>=43
  talk Historian Biraxas##255486
  accept Mana Mania##99258 |goto Shen'dralas 46,78.22
step
  only haveq(99258)
  note Throw the Depleted Crystal Heart into an Unstable Mana Rift. Return to Historian Biraxas within the temple of Shen'dralas with proof of success or failure.
  kill Nascent Pylon Protector##276401 |q 99258 |goto Shen'dralas 46.35,56.77 |elite
step
  only haveq(99258)
  talk Historian Biraxas##255486
  turnin Mana Mania##99258 |goto Shen'dralas 46,78.22 |tip {turninat}Shen'dralas
step
  note {travel}Tanaris
  goto Tanaris 66.99,22.36
]])
