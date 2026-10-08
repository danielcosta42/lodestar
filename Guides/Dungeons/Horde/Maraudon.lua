-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Maraudon", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "ca3e9fee",
}, [[
step
  talk Uthel'nay##7311
  accept Shadowshard Fragments##7068 |goto Orgrimmar 39.16,86.27
step
  talk Willow##13656
  accept Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Vark Battlescar##11823
  accept Vyletongue Corruption##7029 |goto Desolace 23.22,70.33
step
  talk Centaur Pariah##13717
  accept The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Cavindra##13697
  accept Legends of Maraudon##7044 |goto Desolace 31.9,63.8
step
  talk Selendra##13699
  accept Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
step
  talk Zaetar's Spirit##12238
  accept Seed of Life##7066 |goto Maraudon - Dungeon -1,-1
step
  note Collect 10 Shadowshard Fragments from Maraudon and return them to Uthel'nay in Orgrimmar.
  kill Shadowshard Rumbler##11777 |goto Desolace 27.23,57.68 |elite
  collect 10 Shadowshard Fragment##17756 |q 7068 |goto Desolace 27.23,57.68
step
  note Collect 15 Theradric Crystal Carvings for Willow in Desolace.
  collect 15 Theradric Crystal Carving##17684 |q 7028 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Putridus Satyr, Putridus Trickster, Cursed Centaur
step
  note Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
  kill Noxxious Scion##13696 |q 7029 |goto Maraudon - Dungeon -1,-1
step
  note Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace.
  collect Amulet of Union##17758 |q 7067 |goto Desolace 50.42,86.65
step
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  collect Celebrian Diamond##17703 |q 7044 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Lord Vyletongue
step
  note Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace.
  kill Princess Theradras##12201 |q 7064 |goto Maraudon - Dungeon -1,-1 |elite
step
  talk Uthel'nay##7311
  turnin Shadowshard Fragments##7068 |goto Orgrimmar 39.16,86.27
step
  talk Willow##13656
  turnin Twisted Evils##7028 |goto Desolace 62.2,39.63
step
  talk Vark Battlescar##11823
  turnin Vyletongue Corruption##7029 |goto Desolace 23.22,70.33
step
  talk Centaur Pariah##13717
  turnin The Pariah's Instructions##7067 |goto Desolace 50.42,86.65
step
  talk Celebras the Redeemed##13716
  turnin Legends of Maraudon##7044 |goto Maraudon - Dungeon -1,-1
step
  talk Selendra##13699
  turnin Corruption of Earth and Seed##7064 |goto Desolace 26.87,77.67
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
