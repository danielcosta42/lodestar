-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Zul'Gurub", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Warrior
  talk Zanza the Restless##15042
  accept Presence of Might##8184 |goto Zul'Gurub - Dungeon -1,-1
step
  only Rogue
  talk Zanza the Restless##15042
  accept Death's Embrace##8186 |goto Zul'Gurub - Dungeon -1,-1
step
  only Hunter
  talk Zanza the Restless##15042
  accept Falcon's Call##8187 |goto Zul'Gurub - Dungeon -1,-1
step
  only Shaman
  talk Zanza the Restless##15042
  accept Vodouisant's Vigilant Embrace##8188 |goto Zul'Gurub - Dungeon -1,-1
step
  only Mage
  talk Zanza the Restless##15042
  accept Presence of Sight##8189 |goto Zul'Gurub - Dungeon -1,-1
step
  only Warlock
  talk Zanza the Restless##15042
  accept Hoodoo Hex##8190 |goto Zul'Gurub - Dungeon -1,-1
step
  only Priest
  talk Zanza the Restless##15042
  accept Prophetic Aura##8191 |goto Zul'Gurub - Dungeon -1,-1
step
  only Druid
  talk Zanza the Restless##15042
  accept Animist's Caress##8192 |goto Zul'Gurub - Dungeon -1,-1
step
  talk Zanza the Restless##15042
  accept The Savage Guard - Arcanum of Protection##9208 |goto Zul'Gurub - Dungeon -1,-1
step
  talk Zanza the Restless##15042
  accept The Savage Guard - Arcanum of Rapidity##9209 |goto Zul'Gurub - Dungeon -1,-1
step
  talk Zanza the Restless##15042
  accept The Savage Guard - Arcanum of Focus##9210 |goto Zul'Gurub - Dungeon -1,-1
step
  only Warrior
  collect Primal Hakkari Idol##22637 |q 8184 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Rogue
  collect Primal Hakkari Idol##22637 |q 8186 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Hunter
  collect Primal Hakkari Idol##22637 |q 8187 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Shaman
  collect Primal Hakkari Idol##22637 |q 8188 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Mage
  collect Primal Hakkari Idol##22637 |q 8189 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Warlock
  collect Primal Hakkari Idol##22637 |q 8190 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Priest
  collect Primal Hakkari Idol##22637 |q 8191 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  only Druid
  collect Primal Hakkari Idol##22637 |q 8192 |goto Zul'Gurub - Dungeon -1,-1 |raid |tip {dropsfrom}Jin'do the Hexxer, Bloodlord Mandokir
step
  note Zanza the Restless in Zul'Gurub wants an Arcanum of Protection.
  collect Arcanum of Protection##18331 |q 9208 |goto Zul'Gurub - Dungeon -1,-1
step
  note Zanza the Restless in Zul'Gurub wants an Arcanum of Rapidity.
  collect Arcanum of Rapidity##18329 |q 9209 |goto Zul'Gurub - Dungeon -1,-1
step
  note Zanza the Restless in Zul'Gurub wants an Arcanum of Focus.
  collect Arcanum of Focus##18330 |q 9210 |goto Zul'Gurub - Dungeon -1,-1
step
  only Warrior
  talk Zanza the Restless##15042
  turnin Presence of Might##8184 |goto Zul'Gurub - Dungeon -1,-1
step
  only Rogue
  talk Zanza the Restless##15042
  turnin Death's Embrace##8186 |goto Zul'Gurub - Dungeon -1,-1
step
  only Hunter
  talk Zanza the Restless##15042
  turnin Falcon's Call##8187 |goto Zul'Gurub - Dungeon -1,-1
step
  only Shaman
  talk Zanza the Restless##15042
  turnin Vodouisant's Vigilant Embrace##8188 |goto Zul'Gurub - Dungeon -1,-1
step
  only Mage
  talk Zanza the Restless##15042
  turnin Presence of Sight##8189 |goto Zul'Gurub - Dungeon -1,-1
step
  only Warlock
  talk Zanza the Restless##15042
  turnin Hoodoo Hex##8190 |goto Zul'Gurub - Dungeon -1,-1
step
  only Priest
  talk Zanza the Restless##15042
  turnin Prophetic Aura##8191 |goto Zul'Gurub - Dungeon -1,-1
step
  only Druid
  talk Zanza the Restless##15042
  turnin Animist's Caress##8192 |goto Zul'Gurub - Dungeon -1,-1
step
  talk Zanza the Restless##15042
  turnin The Savage Guard - Arcanum of Protection##9208 |goto Zul'Gurub - Dungeon -1,-1
step
  talk Zanza the Restless##15042
  turnin The Savage Guard - Arcanum of Rapidity##9209 |goto Zul'Gurub - Dungeon -1,-1
step
  talk Zanza the Restless##15042
  turnin The Savage Guard - Arcanum of Focus##9210 |goto Zul'Gurub - Dungeon -1,-1
]])
