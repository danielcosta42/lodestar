-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Alterac Mountains (40-60)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Un'Goro Crater (52-55)",
}, [[
step
  talk Prospector Stonehewer##13816
  accept The Battle of Alterac##7141 |goto Alterac Mountains 40.65,79.56
step
  talk Archmage Ansirem Runeweaver##2543
  accept Ansirem's Key##603 |goto Alterac Mountains 18.84,78.49
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the items on Bath'rah's Parchment to Bath'rah the Windwatcher in Alterac.
  kill Nightbane Dark Runner##205 |q 1712 |goto Duskwood 64.14,67.71
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  accept Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  note Bring the pieces for the spirit totem to Bath'rah the Windwatcher.
  kill Carrion Vulture##1809 |q 8412 |goto Western Plaguelands 32.26,62.39
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  note Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.
  kill Timbermaw Shaman##6188 |q 8234 |goto Azshara 44.21,22.54
step
  only Rogue
  talk Fahrad##6707
  accept Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  kill Irondeep Trogg##10987 |q 8249 |goto Alterac Valley - Battleground 51.14,6.98
step
  talk Prospector Stonehewer##13816
  turnin The Battle of Alterac##7141 |goto Alterac Mountains 40.65,79.56
step
  talk Prospector Stonehewer##13816
  accept Hero of the Stormpike##8271 |goto Alterac Mountains 40.65,79.56
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21 |tip {turninat}Azshara
step
  talk Catelyn the Blade##2542
  turnin Ansirem's Key##603 |goto Stranglethorn Vale 27.28,77.53 |tip {turninat}Stranglethorn Vale
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Cyclonian##1712 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Spirit Totem##8412 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  note Bring the Whirlwind Heart to Bath'rah Windwatcher.
  get The Summoning |q 1713 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  accept Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  note Bring the voodoo feathers to Bath'rah the Windwatcher.
  kill Gasher##5713 |q 8413 |goto The Temple of Atal'Hakkar - Dungeon -1,-1 |elite
step
  only Rogue
  talk Fahrad##6707
  turnin Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  talk Prospector Stonehewer##13816
  turnin Hero of the Stormpike##8271 |goto Alterac Mountains 40.65,79.56
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin The Summoning##1713 |goto Alterac Mountains 80.5,66.92
step
  only Mage
  talk Bath'rah the Windwatcher##6176
  turnin Da Voodoo##8413 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  only Warrior
  talk Bath'rah the Windwatcher##6176
  turnin Whirlwind Weapon##1792 |goto Alterac Mountains 80.5,66.92
step
  note {travel}Un'Goro Crater
  goto Un'Goro Crater 43.5,7.42
]])
