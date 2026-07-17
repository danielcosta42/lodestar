-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Blackfathom Deeps", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Dawnwatcher Shaedlass##4786
  accept In Search of Thaelrid##1198 |goto Darnassus 55.36,25.03
step
  talk Argent Guard Thaelrid##4787
  turnin In Search of Thaelrid##1198 |goto Blackfathom Deeps - Dungeon -1,-1
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
