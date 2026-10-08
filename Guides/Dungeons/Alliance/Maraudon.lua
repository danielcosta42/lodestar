-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Maraudon", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Talendria##11715
  accept Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
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
  talk Elder Splitrock##15556
  accept Splitrock the Elder##8635 |goto Maraudon - Dungeon -1,-1
step
  note Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.
  kill Noxxious Scion##13696 |q 7041 |goto Maraudon - Dungeon -1,-1
step
  note Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.
  collect Celebrian Diamond##17703 |q 7044 |goto Maraudon - Dungeon -1,-1 |elite |tip {dropsfrom}Lord Vyletongue
step
  note Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace.
  kill Princess Theradras##12201 |q 7065 |goto Maraudon - Dungeon -1,-1 |elite
step
  talk Talendria##11715
  turnin Vyletongue Corruption##7041 |goto Desolace 68.5,8.88
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
  talk Elder Splitrock##15556
  turnin Splitrock the Elder##8635 |goto Maraudon - Dungeon -1,-1
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
