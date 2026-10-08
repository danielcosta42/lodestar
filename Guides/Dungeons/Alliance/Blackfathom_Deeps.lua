-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackfathom Deeps", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Gerrig Bonegrip##2786
  accept Knowledge in the Deeps##971 |goto Ironforge 50.83,5.62
step
  talk Gershala Nightwhisper##8997
  accept Researching the Corruption##1275 |goto Darkshore 38.33,43.04
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  talk Argent Guard Manados##4784
  accept Twilight Falls##1199 |goto Darnassus 55.24,23.99
step
  note Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge.
  collect Lorgalis Manuscript##5359 |q 971 |goto Blackfathom Deeps - Dungeon -1,-1 |tip {dropsfrom}Pitted Iron Chest
step
  note Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems.
  kill Fallenroot Satyr##4788 |goto Ashenvale 13.52,12.22 |elite
  collect Corrupted Brain Stem##5952 |q 1275 |goto Ashenvale 13.52,12.22
step
  note Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus.
  collect 10 Twilight Pendant##5879 |q 1199 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Acolyte, Twilight Reaver, Twilight Aquamancer
step
  talk Gerrig Bonegrip##2786
  turnin Knowledge in the Deeps##971 |goto Ironforge 50.83,5.62
step
  talk Gershala Nightwhisper##8997
  turnin Researching the Corruption##1275 |goto Darkshore 38.33,43.04
step
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1
step
  talk Argent Guard Manados##4784
  turnin Twilight Falls##1199 |goto Darnassus 55.24,23.99
step
  talk Argent Guard Thaelrid##4787
  accept Blackfathom Villainy##1200 |goto Blackfathom Deeps - Dungeon -1,-1
step
  note Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus.
  collect Head of Kelris##5881 |q 1200 |goto Blackfathom Deeps - Dungeon -1,-1 |elite |tip {dropsfrom}Twilight Lord Kelris
step
  talk Dawnwatcher Selgorm##4783
  turnin Blackfathom Villainy##1200 |goto Darnassus 56.16,24.39
]])
