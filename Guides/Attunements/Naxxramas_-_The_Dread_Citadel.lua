-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Naxxramas - The Dread Citadel", {
	author = "Lodestar Generator",
	rev = "8fc54c32",
}, [[
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 5 Arcane Crystals, 2 Nexus Crystals, 1 Righteous Orb and 60 gold pieces. You must also be Honored with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9121 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  only not completed(9122) not completed(9123) not haveq(9122) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9121 |goto Eastern Plaguelands 71.7,48.69
step
  only not completed(9121) not completed(9123) not haveq(9121) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 71.7,48.69
step
  only not completed(9121) not completed(9123) not haveq(9121) not haveq(9123)
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands wants 2 Arcane Crystals, 1 Nexus Crystal and 30 gold pieces. You must also be Revered with the Argent Dawn.
  collect Arcane Crystal##12363 |q 9122 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Small Thorium Vein, Ooze Covered Thorium Vein
step
  only not completed(9121) not completed(9123) not haveq(9121) not haveq(9123)
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9122 |goto Eastern Plaguelands 71.7,48.69
step
  only not completed(9121) not completed(9122) not haveq(9121) not haveq(9122)
  talk Archmage Angela Dosantos##16116
  accept The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 71.7,48.69
step
  only not completed(9121) not completed(9122) not haveq(9121) not haveq(9122)
  note Archmage Angela Dosantos at Light's Hope Chapel in the Eastern Plaguelands will grant you Arcane Cloaking at no cost. You must be Exalted with the Argent Dawn.
  talk Archmage Angela Dosantos##16116
  turnin The Dread Citadel - Naxxramas##9123 |goto Eastern Plaguelands 71.7,48.69
]])
