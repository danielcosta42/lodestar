-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (60-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "59b7366d",
}, [[
step
  ding 57
step
  talk Highlord Bolvar Fordragon##1748
  accept The First and the Last##6182 |goto Stormwind City 80.21,38.35
step
  talk Melnan Darkstone##14842
  accept The Darkmoon Faire##7905 |goto Ironforge 29.65,75.25
step
  only level>=60
  talk Curator Thorius##8256
  accept Panic at the Digsite##95924 |goto Ironforge 71.5,15.74
step
  only haveq(95924)
  note Slay 6 Ravasaur Matriarchs, 9 Ironhide Ravasaurs and Venomridge in Shaper's Terrace.
  kill Venomridge##261813 |q 95924 |elite
step
  talk Curator Thorius##8256
  accept Mapping the Way Forward##95925 |goto Ironforge 71.5,15.74
step
  only level>=59
  talk Archmage Timear##31439
  accept Blackmaw Magic##97173 |goto Alterac Mountains 15.37,74.09
step
  only haveq(97173)
  note Recover a Blackmaw Ritual Totem from Blackmaw Hold.
  collect Blackmaw Ritual Totem##276893 |q 97173 |goto Alterac Mountains 15.37,74.09 |elite |tip {dropsfrom}Elder Shaman Bloodmane
step
  only haveq(97173)
  talk Archmage Timear##31439
  turnin Blackmaw Magic##97173 |goto Alterac Mountains 15.37,74.09
step
  talk Archmage Celindra##252085
  accept Unstable Magic##96603 |goto Alterac Mountains 14.15,60.05
step
  note Bring 10 Motes of Unstable Magic to Archmage Celindra in Dalaran.
  collect 10 Mote of Unstable Magic##274964 |q 96603 |goto Alterac Mountains 14.15,60.05 |tip Crafted or bought.
step
  talk Archmage Celindra##252085
  turnin Unstable Magic##96603 |goto Alterac Mountains 14.15,60.05
step
  talk Fahrad##6707
  accept Junkboxes Needed##98529 |goto Alterac Mountains 84.45,80.32
step
  talk Fahrad##6707
  turnin Junkboxes Needed##98529 |goto Alterac Mountains 84.45,80.32
step
  note Speak with Mathias Shaw in Old Town Stormwind. He resides in the Barracks.
  talk Master Mathias Shaw##332
  turnin The First and the Last##6182 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  talk Master Mathias Shaw##332
  accept Honor the Dead##6183 |goto Stormwind City 78.31,70.74
step
  note Speak with Mathias Shaw again if you wish to accept his task.
  talk Master Mathias Shaw##332
  turnin Honor the Dead##6183 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  note Deliver the Free Ticket Voucher to Gelvas Grimgate, located inside the Darkmoon Faire carnival.
  talk Gelvas Grimegate##14828
  turnin The Darkmoon Faire##7905 |goto Elwynn Forest 41.5,68.87 |tip {turninat}Elwynn Forest
step
  only haveq(95924)
  talk Curator Thorius##8256
  turnin Panic at the Digsite##95924 |goto Ironforge 71.5,15.74 |tip {turninat}Ironforge
step
  note Find Interesting Landmarks in Shaper's Terrace and fill out the explorer's map at each.
  talk Curator Thorius##8256
  turnin Mapping the Way Forward##95925 |goto Ironforge 71.5,15.74 |tip {turninat}Ironforge
]])
