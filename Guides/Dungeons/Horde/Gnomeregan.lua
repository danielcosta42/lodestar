-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Gnomeregan", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "fad08d41",
}, [[
step
  only not completed(4601) not completed(4602) not haveq(4601) not haveq(4602)
  click The Sparklematic 5200##142487
  accept The Sparklematic 5200!##2951 |goto Gnomeregan - Dungeon -1,-1
step
  kill Dark Iron Agent##6212 |goto Gnomeregan - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Grime-Encrusted Ring##2945 |goto Gnomeregan - Dungeon -1,-1
step
  talk Nogg##3412
  accept Rig Wars##2841 |goto Orgrimmar 75.99,25.41
step
  only not completed(4601) not completed(4602) not haveq(4601) not haveq(4602)
  note Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
  collect Grime-Encrusted Object##9308 |q 2951 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Caverndeep Burrower, Caverndeep Ambusher, Caverndeep Invader
step
  note Retrieve the Rig Blueprints and Thermaplugg's Safe Combination from Gnomeregan and bring them to Nogg in Orgrimmar.
  collect Rig Blueprints##9153 |q 2841 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Thermaplugg's Safe
step
  only not completed(4601) not completed(4602) not haveq(4601) not haveq(4602)
  turnin The Sparklematic 5200!##2951 |goto Gnomeregan - Dungeon -1,-1
step
  turnin Grime-Encrusted Ring##2945 |goto Gnomeregan - Dungeon -1,-1
step
  talk Nogg##3412
  turnin Rig Wars##2841 |goto Orgrimmar 75.99,25.41
step
  only not completed(2952) not completed(4606) not haveq(2952) not haveq(4606)
  click The Sparklematic 5200##175084
  accept The Sparklematic 5200!##4605 |goto Gnomeregan - Dungeon -1,-1
step
  only not completed(2952) not completed(4606) not haveq(2952) not haveq(4606)
  turnin The Sparklematic 5200!##4605 |goto Gnomeregan - Dungeon -1,-1
step
  only not completed(4603) not completed(4604) not haveq(4603) not haveq(4604)
  click The Sparklematic 5200##142487
  accept More Sparklematic Action##2953 |goto Gnomeregan - Dungeon -1,-1
step
  only not completed(4603) not completed(4604) not haveq(4603) not haveq(4604)
  collect Grime-Encrusted Object##9308 |q 2953 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Caverndeep Burrower, Caverndeep Ambusher, Caverndeep Invader
step
  only not completed(4603) not completed(4604) not haveq(4603) not haveq(4604)
  turnin More Sparklematic Action##2953 |goto Gnomeregan - Dungeon -1,-1
]])
