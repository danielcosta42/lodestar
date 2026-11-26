-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Maraudon", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "495b72f7",
}, [[
step
  only not completed(7068) not haveq(7068)
  talk Archmage Tervosh##4967
  accept Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
step
  click Shen'dralar Pylon##577959
  accept Strange Pylons##92914 |goto Shen'dralas 43.65,34.32
step
  only not completed(7029) not haveq(7029)
  talk Talendria##11715
  accept Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
step
  talk Willow##13656
  accept Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  only not completed(7064) not haveq(7064)
  talk Keeper Marandis##13698
  accept Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Zaetar's Spirit##12238
  accept Seed of Life##7066 |goto Maraudon - Dungeon -1,-1
step
  only not completed(7068) not haveq(7068)
  note Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh.
  kill Shadowshard Rumbler##11777 |q 7070 |goto Desolace 27.23,57.68 |elite
  collect 10 Shadowshard Fragment##17756 |q 7070 |goto Desolace 27.23,57.68
step
  note Explore Shen'dralas in an effort to find other pylons like the one you found.
  goto Shen'dralas 72.76,23.11 |tip Eastern pylon found
step
  only not completed(7029) not haveq(7029)
  note Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
  kill Noxxious Scion##13696 |q 7041 |goto Maraudon - Dungeon -1,-1
step
  note Collect 15 Theradric Crystal Carvings for Willow in Desolace.
  collect 15 Theradric Crystal Carving##17684 |q 7028 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Poison Sprite, Putridus Satyr, Putridus Trickster
step
  note Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
  collect Amulet of Union##17758 |q 7067 |goto Desolace 50.42,86.65
step
  only not completed(7064) not haveq(7064)
  note Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
  kill Princess Theradras##12201 |q 7065 |goto Maraudon - Dungeon -1,-1 |elite
step
  only not completed(7068) not haveq(7068)
  talk Archmage Tervosh##4967
  turnin Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
step
  talk Mordent Evenshade##253471
  turnin Strange Pylons##92914 |goto Shen'dralas 35.17,46.61
step
  only not completed(7029) not haveq(7029)
  talk Talendria##11715
  turnin Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
step
  talk Willow##13656
  turnin Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  only not completed(7064) not haveq(7064)
  talk Keeper Marandis##13698
  turnin Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  note Seek out Remulos in Moonglade and give him the Seed of Life.
  talk Keeper Remulos##11832
  turnin Seed of Life##7066 |goto Moonglade 36.18,41.79
step
  talk Mordent Evenshade##253471
  accept Fragments of the Pylons##96010 |goto Shen'dralas 35.17,46.61
step
  note Recover shards and fragments of the pylons, found guarded at the Magram and Gelkis villages. Return them to Mordent Evenshade.
  collect Pylon Fragment##255656 |q 96010/1 |goto Desolace 68.06,78.91 |tip {dropsfrom}Pylon Shard
  collect Pylon Shard##255657 |q 96010 |goto Desolace 36.18,85.64
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
]])
