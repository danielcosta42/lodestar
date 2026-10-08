-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Gnomeregan", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "0424f13b",
}, [[
step
  talk Ozzie Togglevolt##1268
  accept Gnogaine##2926 |goto Dun Morogh 45.89,49.39
step
  only not completed(4601) not completed(4602) not haveq(4601) not haveq(4602)
  click The Sparklematic 5200##142487
  accept The Sparklematic 5200!##2951 |goto Gnomeregan - Dungeon -1,-1
step
  talk Klockmort Spannerspan##6169
  accept Essential Artificials##2924 |goto Ironforge 67.92,46.1
step
  talk Master Mechanic Castpipe##7950
  accept Data Rescue##2930 |goto Ironforge 69.83,48.1
step
  talk Shoni the Shilent##6579
  accept Gyrodrillmatic Excavationators##2928 |goto Stormwind City 62.63,34.11
step
  kill Dark Iron Agent##6212 |goto Gnomeregan - Dungeon -1,-1 |elite |tip Loot the quest item here — it starts the quest.
  accept Grime-Encrusted Ring##2945 |goto Gnomeregan - Dungeon -1,-1
step
  talk High Tinker Mekkatorque##7937
  accept The Grand Betrayal##2929 |goto Ironforge 68.75,48.97
step
  note Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos.
  kill Irradiated Invader##6213 |goto Dun Morogh 20.9,36.02 |elite
  collect Full Leaden Collection Phial##9284 |q 2926 |goto Dun Morogh 20.9,36.02
step
  only not completed(4601) not completed(4602) not haveq(4601) not haveq(4602)
  note Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine.
  collect Grime-Encrusted Object##9308 |q 2951 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Caverndeep Burrower, Caverndeep Ambusher, Caverndeep Invader
step
  note Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge.
  collect 12 Essential Artificial##9278 |q 2924 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Artificial Extrapolator
step
  note Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge.
  collect Prismatic Punch Card##9316 |q 2930 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Matrix Punchograph 3005-D
step
  note Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind.
  collect Robo-mechanical Guts##9309 |q 2928 |goto Gnomeregan - Dungeon -1,-1 |tip {dropsfrom}Caverndeep Burrower, Caverndeep Ambusher, Caverndeep Invader
step
  note Venture to Gnomeregan and kill Mekgineer Thermaplugg. Return to High Tinker Mekkatorque when the task is complete.
  kill Mekgineer Thermaplugg##7800 |q 2929 |goto Gnomeregan - Dungeon -1,-1 |elite
step
  talk Ozzie Togglevolt##1268
  turnin Gnogaine##2926 |goto Dun Morogh 45.89,49.39
step
  only not completed(4601) not completed(4602) not haveq(4601) not haveq(4602)
  turnin The Sparklematic 5200!##2951 |goto Gnomeregan - Dungeon -1,-1
step
  talk Klockmort Spannerspan##6169
  turnin Essential Artificials##2924 |goto Ironforge 67.92,46.1
step
  talk Master Mechanic Castpipe##7950
  turnin Data Rescue##2930 |goto Ironforge 69.83,48.1
step
  talk Shoni the Shilent##6579
  turnin Gyrodrillmatic Excavationators##2928 |goto Stormwind City 62.63,34.11
step
  turnin Grime-Encrusted Ring##2945 |goto Gnomeregan - Dungeon -1,-1
step
  talk High Tinker Mekkatorque##7937
  turnin The Grand Betrayal##2929 |goto Ironforge 68.75,48.97
step
  talk Ozzie Togglevolt##1268
  accept The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.89,49.39
step
  note Travel to Gnomeregan and bring back High Potency Radioactive Fallout. Be warned, the fallout is unstable and will collapse rather quickly.
  collect High Potency Radioactive Fallout##9365 |q 2962 |goto Gnomeregan - Dungeon -1,-1 |elite |tip {dropsfrom}Irradiated Slime, Corrosive Lurker, Irradiated Horror
step
  talk Ozzie Togglevolt##1268
  turnin The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.89,49.39
]])
