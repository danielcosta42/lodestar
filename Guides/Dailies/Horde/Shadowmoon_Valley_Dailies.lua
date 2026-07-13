-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Horde/Shadowmoon Valley (Dailies)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Mordenai##22113
  accept Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  talk Battlemage Vyara##22211
  accept Sunfury Signets##10824 |goto Shadowmoon Valley 56.29,58.8
step
  talk Harbinger Saronen##22214
  accept Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  note Mordenai at Netherwing Fields in Shadowmoon Valley wants you to feed 8 Mature Netherwing Drakes.
  kill Netherwing Event Pinger##22131 |q 10804
step
  note Battlemage Vyara at the Sanctum of the Stars wants you to bring her 10 Sunfury Signets.
  get Sunfury Signets |q 10824 |goto Shadowmoon Valley 56.29,58.8
step
  note Bring 10 Marks of Sargeras to Harbinger Saronen in Shadowmoon Valley.
  kill Cyber-Rage Forgelord##16943 |q 10826 |goto Netherstorm 40.3,21.07
step
  talk Mordenai##22113
  turnin Kindness##10804 |goto Shadowmoon Valley 59.19,58.69
step
  talk Battlemage Vyara##22211
  turnin Sunfury Signets##10824 |goto Shadowmoon Valley 56.29,58.8
step
  talk Harbinger Saronen##22214
  turnin Marks of Sargeras##10826 |goto Shadowmoon Valley 62.27,29.78
step
  talk Mordenai##22113
  accept Seek Out Neltharaku##10811 |goto Shadowmoon Valley 59.19,58.69
step
  talk Battlemage Vyara##22211
  accept Single Sunfury Signet##10822 |goto Shadowmoon Valley 56.29,58.8
step
  talk Battlemage Vyara##22211
  accept More Sunfury Signets##10823 |goto Shadowmoon Valley 56.29,58.8
step
  talk Harbinger Saronen##22214
  accept More Marks of Sargeras##10827 |goto Shadowmoon Valley 62.27,29.78
step
  talk Harbinger Saronen##22214
  accept Single Mark of Sargeras##10828 |goto Shadowmoon Valley 62.27,29.78
step
  get Single Sunfury Signet |q 10822 |goto Shadowmoon Valley 56.29,58.8
step
  get More Sunfury Signets |q 10823 |goto Shadowmoon Valley 56.29,58.8
step
  kill Cyber-Rage Forgelord##16943 |q 10827 |goto Netherstorm 40.3,21.07
step
  kill Cyber-Rage Forgelord##16943 |q 10828 |goto Netherstorm 40.3,21.07
step
  talk Neltharaku##21657
  turnin Seek Out Neltharaku##10811 |goto Shadowmoon Valley 61.31,59.98
step
  talk Battlemage Vyara##22211
  turnin Single Sunfury Signet##10822 |goto Shadowmoon Valley 56.29,58.8
step
  talk Battlemage Vyara##22211
  turnin More Sunfury Signets##10823 |goto Shadowmoon Valley 56.29,58.8
step
  talk Harbinger Saronen##22214
  turnin More Marks of Sargeras##10827 |goto Shadowmoon Valley 62.27,29.78
step
  talk Harbinger Saronen##22214
  turnin Single Mark of Sargeras##10828 |goto Shadowmoon Valley 62.27,29.78
step
  talk Neltharaku##21657
  accept Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  turnin Neltharaku's Tale##10814 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  accept Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  turnin Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  accept To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  note Neltharaku, flying high above Netherwing Fields in Shadowmoon Valley, wants you to collect 12 Nethervine Crystals from Netherwing Ledge.
  collect Nethervine Crystal##185182 |q 10837 |goto Shadowmoon Valley 70.78,83.14
step
  talk Neltharaku##21657
  turnin To Netherwing Ledge!##10837 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  accept The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  note Neltharaku, flying high above Netherwing Fields in Shadowmoon Valley, wants you to free 5 Enslaved Netherwing Drakes.
  get The Force of Neltharaku |q 10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  turnin The Force of Neltharaku##10854 |goto Shadowmoon Valley 61.31,59.98
step
  talk Neltharaku##21657
  accept Karynaku##10858 |goto Shadowmoon Valley 61.31,59.98
step
  talk Karynaku##22112
  turnin Karynaku##10858 |goto Shadowmoon Valley 69.86,61.44
step
  talk Karynaku##22112
  accept Zuluhed the Whacked##10866 |goto Shadowmoon Valley 69.86,61.44
step
  note Kill Zuluhed the Whacked and recover Zuluhed's Key. Use Zuluhed's Key on Zuluhed's Chains to free Karynaku.
  kill Zuluhed the Whacked##11980 |q 10866 |elite
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
  note Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 30 Netherwing Crystals.
  kill Nethermine Flayer##23169 |q 11015 |goto Shadowmoon Valley 71.49,83.28
step
  note Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 35 Nethermine Flayer Hides.
  kill Nethermine Flayer##23169 |q 11016 |goto Shadowmoon Valley 71.49,83.28
step
  note Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 40 Netherdust Pollen.
  collect Netherdust Bush##185881 |q 11017 |goto Shadowmoon Valley 69.04,83.96
step
  note Taskmaster Varkule Dragonbreath at Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 40 Nethercite Ore.
  kill Nethermine Flayer##23169 |q 11018 |goto Shadowmoon Valley 71.49,83.28
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
  note Yarzill the Merc at Dragonmaw Base Camp in Shadowmoon Valley wants you to use Yarzill's Mutton in conjunction with Fel Glands to poison 12 Dragonmaw Peon Camps.
  get A Slow Death |q 11020 |goto Shadowmoon Valley 66.0,86.47
step
  note Yarzill the Merc at Dragonmaw Base Camp in Shadowmoon Valley wants you to recover 10 Netherwing Relics.
  kill Dragonmaw Transporter##23188 |q 11035 |goto Shadowmoon Valley 75.29,71.34
step
  note Yarzill the Merc at Dragonmaw Base Camp in Shadowmoon Valley wants you to recover a Netherwing Egg.
  kill Nethermine Flayer##23169 |q 11049 |goto Shadowmoon Valley 71.49,83.28
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
  kill Nethermine Flayer##23169 |q 11050 |goto Shadowmoon Valley 71.49,83.28
step
  note Chief Overseer Mudlump at the Dragonmaw Base Camp in Shadowmoon Valley wants you to bring him 10 pieces of Knothide Leather and 1 Hardened Hide of Tyrantus.
  collect Heavy Fel Iron Chest##181800 |q 11054 |goto Terokkar Forest 39.25,55.95
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
  talk Overlord Mor'ghor##23139
  accept Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley 66.3,85.56
step
  talk Taskmaster Varkule Dragonbreath##23140
  accept Hail, Commander!##11092 |goto Shadowmoon Valley 66.12,86.36
step
  note Chief Overseer Mudlump at the Dragonmaw Base Camp in Shadowmoon Valley wants you to discipline 20 lazy Dragonmaw Peons. You will also need to return your Booterang.
  kill Disobedient Dragonmaw Peon##23311 |q 11055 |goto Shadowmoon Valley 69.69,87.99
step
  note The Mistress of the Mines at the Netherwing Mines in Shadowmoon Valley wants you to recover 15 Nethermine Cargo crates.
  kill Nethermine Flayer##23169 |q 11076 |goto Shadowmoon Valley 71.49,83.28
step
  note The Dragonmaw Foreman at the Netherwing Mines in Shadowmoon Valley wants you to kill 15 Nethermine Flayers and 5 Nethermine Ravagers.
  kill Nethermine Flayer##23169 |q 11077 |goto Shadowmoon Valley 71.49,83.28
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
  talk Overlord Mor'ghor##23139
  turnin Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  turnin Hail, Commander!##11092 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11094 |goto Shadowmoon Valley 66.3,85.56
step
  talk Overlord Mor'ghor##23139
  accept Kill Them All!##11099 |goto Shadowmoon Valley 66.3,85.56
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
