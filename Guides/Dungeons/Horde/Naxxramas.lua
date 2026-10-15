-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Horde/Naxxramas", {
	faction = "Horde",
	author = "Lodestar Generator",
	rev = "bd61d1ef",
}, [[
step
  only completed(9121,9122,9123)
  talk Commander Eligor Dawnbringer##16115
  accept Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  only completed(9121,9122,9123)
  kill Kel'Thuzad##15990 |goto Naxxramas - Dungeon -1,-1 |raid |tip Loot the quest item here — it starts the quest.
  accept The Fall of Kel'Thuzad##9120 |goto Naxxramas - Dungeon -1,-1
step
  only completed(9121,9122,9123)
  talk Master Craftsman Omarion##16365 |goto Naxxramas - Dungeon -1,-1 |tip They give you the item that starts the quest.
  accept Omarion's Handbook##9233 |goto Naxxramas - Dungeon -1,-1
step
  only completed(9121,9122,9123)
  note Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers.
  kill Deathknight Captain##16145 |q 9033 |goto Naxxramas - Dungeon -1,-1 |elite
step
  only completed(9121,9122,9123)
  talk Commander Eligor Dawnbringer##16115
  turnin Echoes of War##9033 |goto Eastern Plaguelands 71.72,48.59
step
  only completed(9121,9122,9123)
  note Take the Phylactery of Kel'Thuzad to Light's Hope Chapel in the Eastern Plaguelands.
  talk Father Inigo Montoy##16113
  turnin The Fall of Kel'Thuzad##9120 |goto Eastern Plaguelands 71.66,48.58
step
  only completed(9121,9122,9123)
  note Take Omarion's Handbook to Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands.
  talk Craftsman Wilhelm##16376
  turnin Omarion's Handbook##9233 |goto Eastern Plaguelands 71.24,49.9
step
  only completed(9121,9122,9123)
  talk Korfax, Champion of the Light##16112
  accept The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  only completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  only completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  accept Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  only completed(9121,9122,9123)
  note Enter Naxxramas and uncover the Fate of Ramaladni.
  collect Fate of Ramaladni##22708 |q 9229 |goto Naxxramas - Dungeon -1,-1 |elite |tip {dropsfrom}Surgical Assistant, Deathknight Understudy, Dread Creeper
step
  only completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces.
  collect 2 Frozen Rune##22682 |q 9232/1 |goto Naxxramas - Dungeon -1,-1
  collect 2 Essence of Water##7080 |q 9232/2 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 2 Blue Sapphire##12361 |q 9232 |goto Western Plaguelands 47.11,50.51 |tip {dropsfrom}Skeletal Terror, Scarlet Worker, Blighted Zombie
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essences of Water and 200 gold.
  collect 5 Frozen Rune##22682 |q 9234/1 |goto Naxxramas - Dungeon -1,-1
  collect 12 Thorium Bar##12359 |q 9234/2 |tip Crafted or bought.
  collect 2 Arcanite Bar##12360 |q 9234/3 |tip Crafted or bought.
  collect 2 Essence of Water##7080 |q 9234 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essence of Water and 200 gold.
  collect 4 Frozen Rune##22682 |q 9235/1 |goto Naxxramas - Dungeon -1,-1
  collect 12 Thorium Bar##12359 |q 9235/2 |tip Crafted or bought.
  collect 2 Arcanite Bar##12360 |q 9235/3 |tip Crafted or bought.
  collect 2 Essence of Water##7080 |q 9235 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Thorium Bars, 2 Arcanite Bars, 4 Essence of Water and 300 gold. You will also need to be of Exalted reputation with the Argent Dawn.
  collect 8 Frozen Rune##22682 |q 9236/1 |goto Naxxramas - Dungeon -1,-1
  collect 16 Thorium Bar##12359 |q 9236/2 |tip Crafted or bought.
  collect 2 Arcanite Bar##12360 |q 9236/3 |tip Crafted or bought.
  collect 4 Essence of Water##7080 |q 9236 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
step
  only completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 2 Essences of Water, 4 Ironweb Spider Silks and 200 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect 4 Ironweb Spider Silk##14227 |q 9237/4 |goto Western Plaguelands 46.52,44.91 |tip {dropsfrom}Carrion Lurker, Venom Mist Lurker, Plague Lurker
  collect 5 Frozen Rune##22682 |q 9237/1 |goto Naxxramas - Dungeon -1,-1
  collect 4 Bolt of Runecloth##14048 |q 9237/2 |tip Crafted or bought.
  collect 2 Essence of Water##7080 |q 9237 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 2 Bolts of Runecloth, 2 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect 2 Essence of Water##7080 |q 9238/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 4 Frozen Rune##22682 |q 9238/1 |goto Naxxramas - Dungeon -1,-1
  collect 2 Bolt of Runecloth##14048 |q 9238/2 |tip Crafted or bought.
  collect 2 Ironweb Spider Silk##14227 |q 9238 |goto Western Plaguelands 46.52,44.91 |tip {dropsfrom}Carrion Lurker, Venom Mist Lurker, Plague Lurker
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 4 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect 4 Essence of Water##7080 |q 9239/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 5 Frozen Rune##22682 |q 9239/1 |goto Naxxramas - Dungeon -1,-1
  collect 4 Bolt of Runecloth##14048 |q 9239/2 |tip Crafted or bought.
  collect 2 Ironweb Spider Silk##14227 |q 9239 |goto Western Plaguelands 46.52,44.91 |tip {dropsfrom}Carrion Lurker, Venom Mist Lurker, Plague Lurker
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 8 Bolts of Runecloth, 6 Essences of Water, 4 Ironweb Spider Silks and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect 6 Essence of Water##7080 |q 9240/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 8 Frozen Rune##22682 |q 9240/1 |goto Naxxramas - Dungeon -1,-1
  collect 8 Bolt of Runecloth##14048 |q 9240/2 |tip Crafted or bought.
  collect 4 Ironweb Spider Silk##14227 |q 9240 |goto Western Plaguelands 46.52,44.91 |tip {dropsfrom}Carrion Lurker, Venom Mist Lurker, Plague Lurker
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect 3 Essence of Water##7080 |q 9241/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 4 Frozen Rune##22682 |q 9241/1 |goto Naxxramas - Dungeon -1,-1
  talk Lhara##14846
  collect 12 Enchanted Leather##12810 |q 9241/2 |goto Elwynn Forest 41.2,69.9
  collect 3 Cured Rugged Hide##15407 |q 9241 |tip Crafted or bought.
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect 3 Essence of Water##7080 |q 9242/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 5 Frozen Rune##22682 |q 9242/1 |goto Naxxramas - Dungeon -1,-1
  talk Lhara##14846
  collect 12 Enchanted Leather##12810 |q 9242/2 |goto Elwynn Forest 41.2,69.9
  collect 3 Cured Rugged Hide##15407 |q 9242 |tip Crafted or bought.
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Enchanted Leathers, 5 Essences of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect 5 Essence of Water##7080 |q 9243/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 8 Frozen Rune##22682 |q 9243/1 |goto Naxxramas - Dungeon -1,-1
  talk Lhara##14846
  collect 16 Enchanted Leather##12810 |q 9243/2 |goto Elwynn Forest 41.2,69.9
  collect 5 Cured Rugged Hide##15407 |q 9243 |tip Crafted or bought.
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 16 Heavy Scorpid Scales, 5 Essences of Water, 3 Cured Rugged Hides and 200 gold.
  collect 5 Essence of Water##7080 |q 9244/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 4 Frozen Rune##22682 |q 9244/1 |goto Naxxramas - Dungeon -1,-1
  collect 16 Heavy Scorpid Scale##15408 |q 9244/2 |tip Crafted or bought.
  collect 3 Cured Rugged Hide##15407 |q 9244 |tip Crafted or bought.
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 16 Heavy Scorpid Scale, 5 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect 5 Essence of Water##7080 |q 9245/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 5 Frozen Rune##22682 |q 9245/1 |goto Naxxramas - Dungeon -1,-1
  collect 16 Heavy Scorpid Scale##15408 |q 9245/2 |tip Crafted or bought.
  collect 3 Cured Rugged Hide##15407 |q 9245 |tip Crafted or bought.
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 24 Heavy Scorpid Scale, 7 Essence of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect 7 Essence of Water##7080 |q 9246/3 |goto Felwood 48.91,24.66 |tip {dropsfrom}Toxic Horror
  collect 8 Frozen Rune##22682 |q 9246/1 |goto Naxxramas - Dungeon -1,-1
  collect 24 Heavy Scorpid Scale##15408 |q 9246/2 |tip Crafted or bought.
  collect 5 Cured Rugged Hide##15407 |q 9246 |tip Crafted or bought.
step
  only completed(9121,9122,9123)
  talk Korfax, Champion of the Light##16112
  turnin The Fate of Ramaladni##9229 |goto Eastern Plaguelands 71.95,48.52
step
  only completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin The Only Song I Know...##9232 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Icebane Gauntlets##9234 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Icebane Bracers##9235 |goto Eastern Plaguelands 71.24,49.9
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Icebane Breastplate##9236 |goto Eastern Plaguelands 71.24,49.9
step
  only completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Glacial Cloak##9237 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Glacial Wrists##9238 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Glacial Gloves##9239 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Glacial Vest##9240 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Polar Bracers##9241 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Polar Gloves##9242 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Polar Tunic##9243 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Bracers##9244 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Gauntlets##9245 |goto Eastern Plaguelands 71.24,49.9
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  talk Craftsman Wilhelm##16376
  turnin Icy Scale Breastplate##9246 |goto Eastern Plaguelands 71.24,49.9
step
  only completed(9121,9122,9123)
  talk Korfax, Champion of the Light##16112
  accept Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
step
  only completed(9121,9122,9123)
  note Korfax at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 1 Frozen Rune, 1 Blue Sapphire and 1 Arcanite Bar.
  collect 1 Frozen Rune##22682 |q 9230/1 |goto Naxxramas - Dungeon -1,-1
  collect 1 Blue Sapphire##12361 |q 9230/2 |goto Western Plaguelands 47.11,50.51 |tip {dropsfrom}Skeletal Terror, Scarlet Worker, Blighted Zombie
  collect 1 Arcanite Bar##12360 |q 9230 |tip Crafted or bought.
step
  only completed(9121,9122,9123)
  talk Korfax, Champion of the Light##16112
  turnin Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
]])
