-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Un'Goro Crater (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk Karna Remtravel##9618
  accept Chasing A-Me 01##4243 |goto Un'Goro Crater 46.38,13.44
step
  talk J.D. Collie##9117
  accept Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk Spraggle Frock##9997
  accept Lost!##4492 |goto Un'Goro Crater 43.62,8.5
step
  only Druid
  note Collect 8 Bloodcap and 8 Gorishi Stings, and return to Torwa Pathfinder in Un'Goro Crater.
  collect 8 Gorishi Sting##22435 |q 9052 |goto Un'Goro Crater 50.14,76.41 |tip {dropsfrom}Gorishi Wasp, Gorishi Stinger
step
  note Collect 7 Power Crystals of each color: red, blue, yellow, and green. Bring them to J.D. Collie at Marshal's Refuge.
  collect 7 Red Power Crystal##11186 |q 4284 |goto Un'Goro Crater 59.2,51.4
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.64,75.96
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.66,16.76
step
  talk J.D. Collie##9117
  turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.7
step
  talk Ringo##9999
  turnin Lost!##4492 |goto Un'Goro Crater 51.9,49.85
step
  only Druid
  talk Torwa Pathfinder##9619
  accept Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk A-Me 01##9623
  accept Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  talk J.D. Collie##9117
  accept The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  accept The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  accept The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.7
step
  talk Ringo##9999
  accept A Little Help From My Friends##4491 |goto Un'Goro Crater 51.9,49.85
step
  note Find a Mithril Casing and return to A-Me 01 in Un'Goro Crater.
  collect Mithril Casing##10561 |q 4244 |goto Searing Gorge 34.69,51.89 |tip {dropsfrom}Clunk, Frostwolf Shredder Unit, Stormpike Shredder Unit
step
  note Discover the location of the Northern Crystal Pylon in Un'Goro Crater.
  collect Northern Crystal Pylon##164955 |q 4285 |goto Un'Goro Crater 56.52,12.54
step
  note Discover the location of the Eastern Crystal Pylon in Un'Goro Crater.
  collect Eastern Crystal Pylon##164957 |q 4287 |goto Un'Goro Crater 77.16,49.98
step
  note Discover the location of the Western Crystal Pylon.
  collect Western Crystal Pylon##164956 |q 4288 |goto Un'Goro Crater 23.86,59.19
step
  only Druid
  talk Torwa Pathfinder##9619
  turnin Toxic Test##9051 |goto Un'Goro Crater 71.64,75.96
step
  talk A-Me 01##9623
  turnin Chasing A-Me 01##4244 |goto Un'Goro Crater 67.66,16.76
step
  talk J.D. Collie##9117
  turnin The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  turnin The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.7
step
  talk J.D. Collie##9117
  turnin The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.7
step
  talk Spraggle Frock##9997
  turnin A Little Help From My Friends##4491 |goto Un'Goro Crater 43.62,8.5
step
  talk A-Me 01##9623
  accept Chasing A-Me 01##4245 |goto Un'Goro Crater 67.66,16.76
step
  talk J.D. Collie##9117
  accept Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.7
step
  talk Karna Remtravel##9618
  turnin Chasing A-Me 01##4245 |goto Un'Goro Crater 46.38,13.44
step
  talk J.D. Collie##9117
  turnin Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.7
]])
