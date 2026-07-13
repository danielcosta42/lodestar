-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/The Black Morass", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Steward of Time##20142
  accept To The Master's Lair##10279 |goto Tanaris 66.02,49.7
step
  talk Archmage Alturus##17613
  accept Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  accept Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  note Use the Violet Scrying Crystal near underground sources of water in the Master's Cellar and return to Archmage Alturus outside of Karazhan.
  get Arcane Disturbances |q 9824 |goto Deadwind Pass 53.2,90.22
step
  note Bring 10 Ghostly Essences to Archmage Alturus outside of Karazhan.
  kill Restless Shade##7370 |q 9825 |goto Deadwind Pass 51.97,78.4
step
  talk Andormu##20130
  turnin To The Master's Lair##10279 |goto Tanaris 58.43,54.28
step
  talk Archmage Alturus##17613
  turnin Arcane Disturbances##9824 |goto Deadwind Pass 47.28,75.21
step
  talk Archmage Alturus##17613
  turnin Restless Activity##9825 |goto Deadwind Pass 47.28,75.21
step
  talk Andormu##20130
  accept The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Archmage Alturus##17613
  accept Contact from Dalaran##9826 |goto Deadwind Pass 47.28,75.21
step
  talk Andormu##20130
  turnin The Caverns of Time##10277 |goto Tanaris 58.43,54.28
step
  talk Archmage Cedric##18165
  turnin Contact from Dalaran##9826 |goto Alterac Mountains 15.61,54.58
step
  talk Andormu##20130
  accept Old Hillsbrad##10282 |goto Tanaris 58.43,54.28
step
  talk Archmage Cedric##18165
  accept Khadgar##9829 |goto Alterac Mountains 15.61,54.58
step
  talk Erozion##18723
  turnin Old Hillsbrad##10282 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Khadgar##18166
  turnin Khadgar##9829 |goto Shattrath City 54.75,44.32
step
  talk Erozion##18723
  accept Taretha's Diversion##10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Khadgar##18166
  accept Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  note Travel to Durnholde Keep and set 5 incendiary charges at the barrels located inside each of the internment lodges using the Pack of Incendiary Bombs given to you by Erozion.
  get Taretha's Diversion |q 10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  note Khadgar wants you to enter the Shadow Labyrinth at Auchindoun and retrieve the First Key Fragment from an Arcane Container hidden there.
  get Entry Into Karazhan |q 9831 |goto Shattrath City 54.75,44.32
step
  talk Thrall##17876
  turnin Taretha's Diversion##10283 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Khadgar##18166
  turnin Entry Into Karazhan##9831 |goto Shattrath City 54.75,44.32
step
  talk Thrall##17876
  accept Escape from Durnholde##10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Khadgar##18166
  accept The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  note When you are ready to proceed, let Thrall know. Follow Thrall out of Durnholde Keep and help him free Taretha and fulfill his destiny.
  get Escape from Durnholde |q 10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  note Obtain the Second Key Fragment from an Arcane Container inside Coilfang Reservoir and the Third Key Fragment from an Arcane Container inside Tempest Keep. Return to Khadgar in Shattrath City after you've completed this task.
  get The Second and Third Fragments |q 9832 |goto Shattrath City 54.75,44.32
step
  talk Erozion##18723
  turnin Escape from Durnholde##10284 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Khadgar##18166
  turnin The Second and Third Fragments##9832 |goto Shattrath City 54.75,44.32
step
  talk Erozion##18723
  accept Return to Andormu##10285 |goto Old Hillsbrad Foothills - Dungeon -1,-1
step
  talk Khadgar##18166
  accept The Master's Touch##9836 |goto Shattrath City 54.75,44.32
step
  talk Andormu##20130
  turnin Return to Andormu##10285 |goto Tanaris 58.43,54.28
step
  talk Medivh##15608
  turnin The Master's Touch##9836 |goto The Black Morass - Dungeon -1,-1
step
  talk Medivh##15608
  accept Return to Khadgar##9837 |goto The Black Morass - Dungeon -1,-1
step
  talk Andormu##19932
  accept The Black Morass##10296 |goto Tanaris 57.62,59.01
step
  talk Khadgar##18166
  turnin Return to Khadgar##9837 |goto Shattrath City 54.75,44.32
step
  talk Sa'at##20201
  turnin The Black Morass##10296 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  accept The Opening of the Dark Portal##10297 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  turnin The Opening of the Dark Portal##10297 |goto The Black Morass - Dungeon -1,-1
step
  talk Sa'at##20201
  accept Hero of the Brood##10298 |goto The Black Morass - Dungeon -1,-1
step
  talk Andormu##20130
  turnin Hero of the Brood##10298 |goto Tanaris 58.43,54.28
]])
