-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Scarlet Monastery", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "b5a9073b",
}, [[
step
  talk Dorn Plainstalker##2986
  accept Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  talk Vorrel Sengutz##3981
  accept Vorrel's Revenge##1051 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Master Apothecary Faranell##2055
  accept Going, Going, Guano!##1109 |goto Undercity 48.82,69.28
step
  only Mage
  talk Ursyn Ghull##3048
  accept Journey to the Marsh##1947 |goto Thunder Bluff 25.7,14.19
step
  only not Undead not Skyborne
  talk Sage Truthseeker##3978
  accept Compendium of the Fallen##1049 |goto Thunder Bluff 34.4,46.87
step
  talk Varimathras##2425
  accept Into The Scarlet Monastery##1048 |goto Undercity 56.25,92.2
step
  note Return Vorrel Sengutz's wedding ring to Monika Sengutz in Tarren Mill.
  kill Nancy Vishas##3984 |goto Alterac Mountains 32.33,32.78 |elite
  collect Vorrel's Wedding Ring##5538 |q 1051 |goto Alterac Mountains 32.33,32.78
step
  note Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity.
  collect 1 Kraul Guano##5801 |q 1109 |goto Razorfen Kraul - Dungeon -1,-1 |elite |tip {dropsfrom}Kraul Bat, Greater Kraul Bat, Blind Hunter
step
  only not Undead not Skyborne
  note Retrieve the Compendium of the Fallen from the Monastery in Tirisfal Glades and return to Sage Truthseeker in Thunder Bluff.
  collect Compendium of the Fallen##5535 |q 1049 |goto Scarlet Monastery - Dungeon -1,-1
step
  note Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.
  kill High Inquisitor Whitemane##3977 |q 1048 |goto Scarlet Monastery - Dungeon -1,-1 |elite
step
  talk Dorn Plainstalker##2986
  turnin Test of Faith##1149 |goto Thousand Needles 53.95,41.49
step
  talk Monika Sengutz##3982
  turnin Vorrel's Revenge##1051 |goto Hillsbrad Foothills 62.67,18.88
step
  talk Master Apothecary Faranell##2055
  turnin Going, Going, Guano!##1109 |goto Undercity 48.82,69.28
step
  only Mage
  talk Tabetha##6546
  turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
step
  only not Undead not Skyborne
  talk Sage Truthseeker##3978
  turnin Compendium of the Fallen##1049 |goto Thunder Bluff 34.4,46.87
step
  talk Varimathras##2425
  turnin Into The Scarlet Monastery##1048 |goto Undercity 56.25,92.2
step
  talk Dorn Plainstalker##2986
  accept Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  talk Master Apothecary Faranell##2055
  accept Hearts of Zeal##1113 |goto Undercity 48.82,69.28
step
  only Mage
  talk Tabetha##6546
  accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
step
  note Bring Grenka's Claw to Dorn Plainstalker in Thousand Needles.
  collect Grenka's Claw##5843 |q 1150 |goto Thousand Needles 26.6,55.8 |tip {dropsfrom}Grenka Bloodscreech
step
  note Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal.
  collect Heart of Zeal##5805 |q 1113 |goto Scarlet Monastery - Dungeon -1,-1 |elite |tip {dropsfrom}Houndmaster Loksey, Herod, Scarlet Commander Mograine
step
  talk Dorn Plainstalker##2986
  turnin Test of Endurance##1150 |goto Thousand Needles 53.95,41.49
step
  talk Master Apothecary Faranell##2055
  turnin Hearts of Zeal##1113 |goto Undercity 48.82,69.28
step
  only Mage
  talk Magus Tirth##6548
  turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.7
step
  talk Dorn Plainstalker##2986
  accept Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  only Mage
  talk Magus Tirth##6548
  accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  note Bring Fragments of Rok'Alim to Dorn Plainstalker in Thousand Needles.
  kill Rok'Alim the Pounder##4499 |goto Thousand Needles 17.1,38.1 |elite
  collect Fragments of Rok'Alim##5844 |q 1151 |goto Thousand Needles 17.1,38.1
step
  only Mage
  note Find the phrase to Tirth's strongbox, then return to Tirth.
  talk "Plucky" Johnson##6626 |q 1950 |goto Thousand Needles 79.61,75.63
step
  talk Dorn Plainstalker##2986
  turnin Test of Strength##1151 |goto Thousand Needles 53.95,41.49
step
  only Mage
  talk Magus Tirth##6548
  turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.7
step
  talk Dorn Plainstalker##2986
  accept Test of Lore##1152 |goto Thousand Needles 53.95,41.49
step
  only Mage
  talk Magus Tirth##6548
  accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.7
step
  only Mage
  note Bring the book Rituals of Power to Tabetha in Dustwallow Marsh.
  collect Rituals of Power##7274 |q 1951 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##1152 |goto Stonetalon Mountains 78.8,45.69
step
  only Mage
  talk Tabetha##6546
  turnin Rituals of Power##1951 |goto Dustwallow Marsh 46.06,57.09
step
  talk Braug Dimspirit##4489
  accept Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  note Find the Legacy of the Aspects and return it to Braug Dimspirit near the entrance to Talondeep Path in Stonetalon Mountains.
  collect Legacy of the Aspects##5860 |q 1154 |goto Ashenvale 75.57,74.37 |tip {dropsfrom}The Legacy of the Aspects
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##1154 |goto Stonetalon Mountains 78.8,45.69
step
  talk Braug Dimspirit##4489
  accept Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  talk Braug Dimspirit##4489
  turnin Test of Lore##6627 |goto Stonetalon Mountains 78.8,45.69
step
  talk Braug Dimspirit##4489
  accept Test of Lore##1159 |goto Stonetalon Mountains 78.8,45.69
step
  talk Parqual Fintallas##4488
  turnin Test of Lore##1159 |goto Undercity 57.8,65.42
step
  talk Parqual Fintallas##4488
  accept Test of Lore##1160 |goto Undercity 57.8,65.42
step
  note Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity.
  collect Beginnings of the Undead Threat##5861 |q 1160 |goto Scarlet Monastery - Dungeon -1,-1
step
  talk Parqual Fintallas##4488
  turnin Test of Lore##1160 |goto Undercity 57.8,65.42
]])
