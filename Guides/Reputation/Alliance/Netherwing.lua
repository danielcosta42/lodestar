-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Netherwing", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Mordenai##22113
  accept Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  talk Ja'y Nosliw##22433
  accept Earning Your Wings...##11063 |goto Shadowmoon Valley 65.89,87.18
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Bow to the Highlord##11107 |goto Shadowmoon Valley 66.12,86.36
step
  talk Mordenai##22113
  turnin Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  talk Ja'y Nosliw##22433
  turnin Earning Your Wings...##11063 |goto Shadowmoon Valley 65.89,87.18
step
  talk Overlord Mor'ghor##23139
  turnin Bow to the Highlord##11107 |goto Shadowmoon Valley 66.3,85.56
step
  talk Mordenai##22113
  accept Seek Out Neltharaku##10811 |goto Shadowmoon Valley 59.19,58.69
step
  talk Murg "Oldie" Muckjaw##23340
  accept Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley 65.17,85.65
step
  talk Overlord Mor'ghor##23139
  accept Lord Illidan Stormrage##11108 |goto Shadowmoon Valley 66.3,85.56
step
  talk Neltharaku##21657
  turnin Seek Out Neltharaku##10811 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley 65.89,87.18
step
  talk Barthamus##23433
  turnin Lord Illidan Stormrage##11108 |goto Shattrath City 66.63,16.43
step
  talk Neltharaku##21657
  accept Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Trope the Filth-Belcher##23342
  accept Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley 65.16,85.46
step
  talk Neltharaku##21657
  turnin Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley 65.89,87.18
step
  talk Neltharaku##21657
  accept Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Corlok the Vet##23344
  accept Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley 65.18,85.23
step
  talk Neltharaku##21657
  turnin Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley 65.89,87.18
step
  talk Neltharaku##21657
  accept To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  talk Wing Commander Ichman##13437
  accept Dragonmaw Race: Wing Commander Ichman##11069 |goto Alterac Valley - Battleground 48.36,84.56
step
  talk Neltharaku##21657
  turnin To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Wing Commander Ichman##11069 |goto Shadowmoon Valley 65.89,87.18
step
  talk Neltharaku##21657
  accept The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Wing Commander Mulverick##23346
  accept Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley 65.17,84.88
step
  talk Neltharaku##21657
  turnin The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley 65.89,87.18
step
  talk Neltharaku##21657
  accept Karynaku##10858 |goto Shadowmoon Valley 61.31,59.98
step
  talk Captain Skyshatter##23348
  accept Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley 65.45,85.28
step
  talk Karynaku##22112
  turnin Karynaku##10858 |goto Shadowmoon Valley 69.86,61.44
step
  talk Ja'y Nosliw##22433
  turnin Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley 65.89,87.18
step
  talk Karynaku##22112
  accept Zuluhed the Whacked##10866 |goto Shadowmoon Valley 69.86,61.44
step
  note Kill Zuluhed the Whacked and recover Zuluhed's Key. Use Zuluhed's Key on Zuluhed's Chains to free Karynaku.
  collect Zuluhed's Chains##185156 |q 10866 |goto Shadowmoon Valley 69.84,61.29
step
  talk Karynaku##22112
  turnin Zuluhed the Whacked##10866 |goto Shadowmoon Valley 69.86,61.44
step
  talk Karynaku##22112
  accept Ally of the Netherwing##10870 |goto Shadowmoon Valley 69.86,61.44
step
  talk Mordenai##22113
  turnin Ally of the Netherwing##10870 |goto Shadowmoon Valley 59.19,58.69
step
  talk Mordenai##22113
  accept Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley 59.19,58.69
step
  talk Mordenai##22113
  turnin Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley 59.19,58.69
step
  talk Mordenai##22113
  accept In Service of the Illidari##11013 |goto Shadowmoon Valley 59.19,58.69
step
  talk Overlord Mor'ghor##23139
  turnin In Service of the Illidari##11013 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  accept Enter the Taskmaster##11014 |goto Shadowmoon Valley 66.3,85.56
step
  talk Taskmaster Varkule Dragonbreath##23140
  turnin Enter the Taskmaster##11014 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Netherwing Crystals##11015 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Netherdust Pollen##11017 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Nethercite Ore##11018 |goto Shadowmoon Valley 66.12,86.36
step
  talk Yarzill the Merc##23141
  accept Your Friend On The Inside##11019 |goto Shadowmoon Valley 66.0,86.47
step
  note Slay 10 Overmine Flayers and Barash the Den Mother. Return to Overlord Mor'ghor at the Dragonmaw Base Camp should you succeed.
  kill Overmine Flayer##23264 |q 11041 |goto Shadowmoon Valley 72.59,85.62
step
  talk Taskmaster Varkule Dragonbreath##23140
  turnin Netherwing Crystals##11015 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  turnin Netherdust Pollen##11017 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  turnin Nethercite Ore##11018 |goto Shadowmoon Valley 66.12,86.36
step
  talk Yarzill the Merc##23141
  turnin Your Friend On The Inside##11019 |goto Shadowmoon Valley 66.0,86.47
step
  talk Overlord Mor'ghor##23139
  turnin A Job Unfinished...##11041 |goto Shadowmoon Valley 66.3,85.56
step
  talk Yarzill the Merc##23141
  accept A Slow Death##11020 |goto Shadowmoon Valley 66.0,86.47
step
  talk Yarzill the Merc##23141
  accept The Not-So-Friendly Skies...##11035 |goto Shadowmoon Valley 66.0,86.47
step
  talk Yarzill the Merc##23141
  accept The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley 66.0,86.47
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Rise, Overseer!##11053 |goto Shadowmoon Valley 66.12,86.36
step
  talk Yarzill the Merc##23141
  turnin A Slow Death##11020 |goto Shadowmoon Valley 66.0,86.47
step
  talk Yarzill the Merc##23141
  turnin The Not-So-Friendly Skies...##11035 |goto Shadowmoon Valley 66.0,86.47
step
  talk Yarzill the Merc##23141
  turnin The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley 66.0,86.47
step
  talk Overlord Mor'ghor##23139
  turnin Rise, Overseer!##11053 |goto Shadowmoon Valley 66.3,85.56
step
  talk Yarzill the Merc##23141
  accept Accepting All Eggs##11050 |goto Shadowmoon Valley 66.0,86.47
step
  talk Chief Overseer Mudlump##23291
  accept Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley 66.86,86.11
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept The Netherwing Mines##11075 |goto Shadowmoon Valley 66.12,86.36
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.12,86.36
step
  talk Yarzill the Merc##23141
  turnin Accepting All Eggs##11050 |goto Shadowmoon Valley 66.0,86.47
step
  talk Chief Overseer Mudlump##23291
  turnin Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley 66.86,86.11
step
  talk Mistress of the Mines##23149
  turnin The Netherwing Mines##11075 |goto Shadowmoon Valley 65.43,90.13
step
  talk Overlord Mor'ghor##23139
  turnin Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.3,85.56
step
  talk Chief Overseer Mudlump##23291
  accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley 66.86,86.11
step
  talk Mistress of the Mines##23149
  accept Picking Up The Pieces...##11076 |goto Shadowmoon Valley 65.43,90.13
step
  talk Dragonmaw Foreman##23376
  accept Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley 65.52,88.94
step
  talk Ronag the Slave Driver##23166
  accept Crazed and Confused##11083 |goto Shadowmoon Valley 71.63,87.79
step
  talk Overlord Mor'ghor##23139
  accept Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley 66.3,85.56
step
  talk Illidari Lord Balthas##23427
  accept The Soul Cannon of Reth'hedron##11089 |goto Shadowmoon Valley 66.3,85.7
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Hail, Commander!##11092 |goto Shadowmoon Valley 66.12,86.36
step
  note Chief Overseer Mudlump at the Dragonmaw Base Camp in Shadowmoon Valley wants you to discipline 20 lazy Dragonmaw Peons. You will also need to return your Booterang.
  kill Disobedient Dragonmaw Peon##23311 |q 11055 |goto Shadowmoon Valley 69.69,87.99
step
  note The Dragonmaw Foreman at the Netherwing Mines in Shadowmoon Valley wants you to kill 15 Nethermine Flayers and 5 Nethermine Ravagers.
  kill Nethermine Flayer##23169 |q 11077 |goto Shadowmoon Valley 71.49,83.28
step
  note Ronag the Slave Driver in the Netherwing Mines of Shadowmoon Valley wants you to slay the Crazed Murkblood Foreman and 5 Crazed Murkblood Miners.
  kill Crazed Murkblood Foreman##23305 |q 11083 |goto Shadowmoon Valley 74.27,89.74
step
  talk Chief Overseer Mudlump##23291
  turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley 66.86,86.11
step
  talk Mistress of the Mines##23149
  turnin Picking Up The Pieces...##11076 |goto Shadowmoon Valley 65.43,90.13
step
  talk Dragonmaw Foreman##23376
  turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley 65.52,88.94
step
  talk Mistress of the Mines##23149
  turnin The Great Murkblood Revolt##11081 |goto Shadowmoon Valley 65.43,90.13
step
  talk Ronag the Slave Driver##23166
  turnin Crazed and Confused##11083 |goto Shadowmoon Valley 71.63,87.79
step
  talk Overlord Mor'ghor##23139
  turnin Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley 66.3,85.56
step
  talk Illidari Lord Balthas##23427
  turnin The Soul Cannon of Reth'hedron##11089 |goto Shadowmoon Valley 66.3,85.7
step
  talk Overlord Mor'ghor##23139
  turnin Hail, Commander!##11092 |goto Shadowmoon Valley 66.3,85.56
step
  talk Mistress of the Mines##23149
  accept Seeker of Truth##11082 |goto Shadowmoon Valley 65.43,90.13
step
  talk Illidari Lord Balthas##23427
  accept Subdue the Subduer##11090 |goto Shadowmoon Valley 66.3,85.7
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11094 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11099 |goto Shadowmoon Valley 66.3,85.56
step
  talk Mistress of the Mines##23149
  turnin Seeker of Truth##11082 |goto Shadowmoon Valley 65.43,90.13
step
  talk Illidari Lord Balthas##23427
  turnin Subdue the Subduer##11090 |goto Shadowmoon Valley 66.3,85.7
step
  talk Arcanist Thelis##21955
  turnin Kill Them All!##11094 |goto Shadowmoon Valley 56.25,59.6
step
  talk Anchorite Ceyla##21402
  turnin Kill Them All!##11099 |goto Shadowmoon Valley 62.58,28.38
step
  talk Arcanist Thelis##21955
  accept Commander Hobb##11095 |goto Shadowmoon Valley 56.25,59.6
step
  talk Anchorite Ceyla##21402
  accept Commander Arcus##11100 |goto Shadowmoon Valley 62.58,28.38
step
  talk Commander Hobb##23434
  turnin Commander Hobb##11095 |goto Shadowmoon Valley 56.48,58.65
step
  talk Commander Arcus##23452
  turnin Commander Arcus##11100 |goto Shadowmoon Valley 62.38,29.32
step
  talk Commander Hobb##23434
  accept The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley 56.48,58.65
step
  talk Commander Arcus##23452
  accept The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley 62.38,29.32
step
  talk Overlord Mor'ghor##23139
  turnin The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  turnin The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley 66.3,85.56
]])
