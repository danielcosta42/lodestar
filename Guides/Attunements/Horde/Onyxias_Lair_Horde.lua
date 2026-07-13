-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Attunements/Horde/Onyxia's Lair (Horde)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Warlord Goretooth##9077
  accept Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  note Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished.
  kill Overlord Wyrmthalak##9568 |q 4903 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Warlord Goretooth##9077
  turnin Warlord's Command##4903 |goto Badlands 5.81,47.52
step
  talk Warlord Goretooth##9077
  accept Eitrigg's Wisdom##4941 |goto Badlands 5.81,47.52
step
  talk Thrall##4949
  turnin Eitrigg's Wisdom##4941 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  note Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar.
  get For The Horde! |q 4974 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  turnin For The Horde!##4974 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  turnin What the Wind Carries##6566 |goto Orgrimmar 31.73,37.82
step
  talk Thrall##4949
  accept The Champion of the Horde##6567 |goto Orgrimmar 31.73,37.82
step
  talk Rokaro##10182
  turnin The Champion of the Horde##6567 |goto Feralas 46.39,18.24
step
  talk Rokaro##10182
  accept Mistress of Deception##6568 |goto Feralas 46.39,18.24
step
  talk Myranda the Hag##11872
  turnin Mistress of Deception##6568 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  note Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete.
  kill Rage Talon Dragonspawn##9096 |q 6569 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Myranda the Hag##11872
  turnin Oculus Illusions##6569 |goto Western Plaguelands 50.79,77.85
step
  talk Myranda the Hag##11872
  accept Emberstrife##6570 |goto Western Plaguelands 50.79,77.85
step
  talk Emberstrife##10321
  turnin Emberstrife##6570 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  note You must find the blue dragonflight drake champion, Scryer, and slay him. Pry his skull from his corpse and return it to Emberstrife.
  kill Scryer##10664 |q 6582 |goto Winterspring 52.71,55.89
step
  note Destroy the drake champion of the Green Flight, Somnus. Take his skull and return it to Emberstrife.
  kill Somnus##12900 |q 6583 |goto Swamp of Sorrows 74.12,68.35
step
  note Guarding the Caverns of Time in the Tanaris Desert is Chronalis, child of Nozdormu. Destroy him and return his skull to Emberstrife.
  kill Chronalis##8197 |q 6584 |goto Tanaris 64.16,48.49
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Scryer##6582 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Somnus##6583 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Chronalis##6584 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  note Travel to Grim Batol and track down Axtroz, drake champion of the Red Flight. Destroy him and take his skull. Return the skull to Emberstrife.
  kill Axtroz##12899 |q 6585 |goto Wetlands 81.82,48.24
step
  talk Emberstrife##10321
  turnin The Test of Skulls, Axtroz##6585 |goto Dustwallow Marsh 56.66,87.72
step
  talk Emberstrife##10321
  accept Ascension...##6601 |goto Dustwallow Marsh 56.66,87.72
step
  talk Rokaro##10182
  turnin Ascension...##6601 |goto Feralas 46.39,18.24
step
  talk Rokaro##10182
  accept Blood of the Black Dragon Champion##6602 |goto Feralas 46.39,18.24
step
  note Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rokaro.
  kill General Drakkisath##10363 |q 6602 |goto Blackrock Spire - Dungeon -1,-1
step
  talk Rokaro##10182
  turnin Blood of the Black Dragon Champion##6602 |goto Feralas 46.39,18.24
]])
