-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/The Barrens (55-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "b0da5917",
}, [[
step
  only completed(5158)
  talk Islen Waterseer##5901
  accept Cleansed Water Returns to Felwood##5159 |goto The Barrens 65.83,43.78
step
  talk Liv Rizzlefix##8496
  accept Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
  talk Innkeeper Wiley##6791
  accept Legacy Reward: Replica Ironforge Air Rifle##96339 |goto The Barrens 62.05,39.41
step
  talk Innkeeper Wiley##6791
  accept Legacy Reward: Spectral Bear Cub##96383 |goto The Barrens 62.05,39.41
step
  talk Innkeeper Wiley##6791
  turnin Legacy Reward: Replica Ironforge Air Rifle##96339 |goto The Barrens 62.05,39.41
step
  talk Innkeeper Wiley##6791
  turnin Legacy Reward: Spectral Bear Cub##96383 |goto The Barrens 62.05,39.41
step
  talk Dokimi##256386
  accept A Sealed Crate##91899 |goto The Barrens 50.15,29.35
step
  collect Sealed Apprentice Crate##248765 |q 91899 |goto The Barrens 50.15,29.35
step
  talk Dokimi##256386
  accept A Sealed Crate##91900 |goto The Barrens 50.15,29.35
step
  collect Sealed Journeyman Crate##248766 |q 91900 |goto The Barrens 50.15,29.35
step
  talk Dokimi##256386
  accept A Sealed Crate##91904 |goto The Barrens 50.15,29.35
step
  collect Sealed Apprentice Crate##248770 |q 91904 |goto The Barrens 50.15,29.35
step
  buy Gishah##256384 |goto The Barrens 48.71,29.37 |tip Loot the quest item here — it starts the quest.
  accept Sign Me Up!##95819 |goto The Barrens 48.71,29.37
step
  note Bring the completed form to Jornah in The Barrens.
  collect Massive Pile of Completed Forms##270897 |q 95819 |goto The Barrens 48.71,29.37
step
  talk Dokimi##256386
  turnin A Sealed Crate##91899 |goto The Barrens 50.15,29.35
step
  talk Dokimi##256386
  turnin A Sealed Crate##91900 |goto The Barrens 50.15,29.35
step
  talk Dokimi##256386
  turnin A Sealed Crate##91904 |goto The Barrens 50.15,29.35
step
  talk Jornah##256388
  turnin Sign Me Up!##95819 |goto The Barrens 49.8,29.06
step
  only completed(5158)
  talk Greta Mosshoof##10922
  turnin Cleansed Water Returns to Felwood##5159 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
step
  note Collect 9 samples of Un'Goro Ash from the fire elementals around the volcano in Un'Goro Crater, and return them to Liv Rizzlefix in Ratchet.
  collect 9 Un'Goro Ash##11829 |q 4502 |goto Un'Goro Crater 55.1,48.83 |tip {dropsfrom}Scorching Elemental, Living Blaze, Blazerunner
step
  talk Liv Rizzlefix##8496
  turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
  only completed(5158)
  talk Greta Mosshoof##10922
  accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
  only completed(5158)
  note Using the Purified Moon Well Water, douse the flames of the four braziers of protection within Shadow Hold in Felwood, then return to Greta Mosshoof in the Emerald Sanctuary.
  collect Brazier of Pain##176158 |q 5165 |goto Felwood 36.27,56.3
step
  only completed(5158)
  talk Greta Mosshoof##10922
  turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
step
  only completed(5158)
  talk Greta Mosshoof##10922
  accept A Final Blow##5242 |goto Felwood 51.21,82.11
step
  only completed(5158)
  note Kill Moora and Salia, and bring Shadow Lord Fel'dan's Head to Greta Mosshoof in Felwood.
  kill Moora##9861 |q 5242 |goto Felwood 38.81,46.87
step
  only completed(5158)
  talk Greta Mosshoof##10922
  turnin A Final Blow##5242 |goto Felwood 51.21,82.11 |tip {turninat}Felwood
]])
