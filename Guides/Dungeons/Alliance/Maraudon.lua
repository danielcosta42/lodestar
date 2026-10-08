-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Maraudon", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Archmage Tervosh##4967
  accept Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
step
  talk Talendria##11715
  accept Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
step
  talk Willow##13656
  accept Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 31.9,63.8
step
  talk Keeper Marandis##13698
  accept Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Zaetar's Spirit##12238
  accept Seed of Life##7066 |goto Maraudon - Dungeon -1,-1
step
  note Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh.
  kill Shadowshard Rumbler##11777 |goto Desolace 27.23,57.68 |elite
  collect 10 Shadowshard Fragment##17756 |q 7070 |goto Desolace 27.23,57.68
step
  note Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
  kill Noxxious Scion##13696 |q 7041 |goto Maraudon - Dungeon -1,-1
step
  note Collect 15 Theradric Crystal Carvings for Willow in Desolace.
  collect 15 Theradric Crystal Carving##17684 |q 7028 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Putridus Satyr, Putridus Trickster, Cursed Centaur
step
  note Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
  collect Amulet of Union##17758 |q 7067 |goto Desolace 50.42,86.65
step
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  collect Celebrian Diamond##17703 |q 7044 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Lord Vyletongue
step
  note Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
  kill Princess Theradras##12201 |q 7065 |goto Maraudon - Dungeon -1,-1 |elite
step
  talk Archmage Tervosh##4967
  turnin Shadowshard Fragments##7070 |goto Dustwallow Marsh 66.42,49.26
step
  talk Talendria##11715
  turnin Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
step
  talk Willow##13656
  turnin Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044 |goto Maraudon - Dungeon -1,-1
step
  talk Keeper Marandis##13698
  turnin Corruption of Earth and Seed##7065 |goto Desolace 63.83,10.67
step
  talk Keeper Remulos##11832
  turnin Seed of Life##7066 |goto Moonglade 36.18,41.79
step
  talk Celebras the Redeemed##13716
  accept The Scepter of Celebras##7046 |goto Maraudon - Dungeon -1,-1
step
  note Assist Celebras the Redeemed while he creates the Scepter of Celebras.
  collect Incantation of Celebras##178965 |q 7046 |goto Maraudon - Dungeon -1,-1
step
  talk Celebras the Redeemed##13716
  turnin The Scepter of Celebras##7046 |goto Maraudon - Dungeon -1,-1
]])
