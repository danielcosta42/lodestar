-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Isle of Quel'Danas (70-70)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  note {fp}Ohura
  goto Isle of Quel'Danas 48.36,25.07 |tip {vendor}
step
  talk Exarch Larethor##24813
  accept Magisters' Terrace##11488 |goto Isle of Quel'Danas 47.42,30.74
step
  talk Tradesman Portanuus##25034
  accept Report to Nasuun##11517 |goto Isle of Quel'Danas 47.27,35.04
step
  talk Captain Theris Dawnhearth##24967
  accept The Missing Magistrix##11526 |goto Isle of Quel'Danas 47.47,30.56
step
  talk Tradesman Portanuus##25034
  accept Report to Nasuun##11534 |goto Isle of Quel'Danas 47.27,35.04
step
  talk Anchorite Kairthos##25163
  accept A Magnanimous Benefactor##11549 |goto Isle of Quel'Danas 51.18,33.12
step
  talk Eldara Dawnrunner##25032
  accept A Friend in the Frontlines##11554 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Eldara Dawnrunner##25032
  accept Honored by Your Allies##11555 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Eldara Dawnrunner##25032
  accept Revered in the Field of Battle##11556 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Eldara Dawnrunner##25032
  accept Exalted Among All Combatants##11557 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Tyrith##24822
  turnin Magisters' Terrace##11488 |goto Magisters' Terrace - Dungeon -1,-1 |tip {turninat}Magisters' Terrace - Dungeon
step
  talk Eldara Dawnrunner##25032
  turnin A Friend in the Frontlines##11554 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Eldara Dawnrunner##25032
  turnin Honored by Your Allies##11555 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Eldara Dawnrunner##25032
  turnin Revered in the Field of Battle##11556 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Eldara Dawnrunner##25032
  turnin Exalted Among All Combatants##11557 |goto Isle of Quel'Danas 47.25,30.81
step
  talk Magistrix Seyla##24937
  turnin The Missing Magistrix##11526 |goto Hellfire Peninsula 58.18,17.58 |tip {turninat}Hellfire Peninsula
step
  talk Exarch Nasuun##24932
  turnin Report to Nasuun##11534 |goto Shattrath City 49.08,42.48 |tip {turninat}Shattrath City
step
  talk Exarch Nasuun##24932
  turnin Report to Nasuun##11517 |goto Shattrath City 49.08,42.48 |tip {turninat}Shattrath City
step
  talk Anchorite Kairthos##25163
  turnin A Magnanimous Benefactor##11549 |goto Isle of Quel'Danas 51.18,33.12
]])
