-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Naxxramas", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "adf9ec70",
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
  collect Fate of Ramaladni##22708 |q 9229 |goto Naxxramas - Dungeon -1,-1 |elite |tip {dropsfrom}Dread Creeper, Carrion Spinner, Venom Stalker
step
  only completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces.
  collect Frozen Rune##22682 |q 9232 |goto Naxxramas - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essences of Water and 200 gold.
  collect Frozen Rune##22682 |q 9234 |goto Naxxramas - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Thorium Bars, 2 Arcanite Bars, 2 Essence of Water and 200 gold.
  collect Frozen Rune##22682 |q 9235 |goto Naxxramas - Dungeon -1,-1
step
  only not Hunter not Rogue not Priest not Shaman not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Thorium Bars, 2 Arcanite Bars, 4 Essence of Water and 300 gold. You will also need to be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9236 |goto Naxxramas - Dungeon -1,-1
step
  only completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 2 Essences of Water, 4 Ironweb Spider Silks and 200 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9237 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 2 Bolts of Runecloth, 2 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9238 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 4 Bolts of Runecloth, 4 Essences of Water, 2 Ironweb Spider Silks and 200 gold.
  collect Frozen Rune##22682 |q 9239 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Rogue not Shaman not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 8 Bolts of Runecloth, 6 Essences of Water, 4 Ironweb Spider Silks and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9240 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9241 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 12 Enchanted Leather, 3 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9242 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Hunter not Priest not Shaman not Mage not Warlock completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 16 Enchanted Leathers, 5 Essences of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9243 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 4 Frozen Runes, 16 Heavy Scorpid Scales, 5 Essences of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9244 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 5 Frozen Runes, 16 Heavy Scorpid Scale, 5 Essence of Water, 3 Cured Rugged Hides and 200 gold.
  collect Frozen Rune##22682 |q 9245 |goto Naxxramas - Dungeon -1,-1
step
  only not Warrior not Paladin not Rogue not Priest not Mage not Warlock not Druid completed(9121,9122,9123)
  note Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants 8 Frozen Runes, 24 Heavy Scorpid Scale, 7 Essence of Water, 5 Cured Rugged Hides and 300 gold. You must also be of Exalted reputation with the Argent Dawn.
  collect Frozen Rune##22682 |q 9246 |goto Naxxramas - Dungeon -1,-1
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
  collect Frozen Rune##22682 |q 9230 |goto Naxxramas - Dungeon -1,-1
step
  only completed(9121,9122,9123)
  talk Korfax, Champion of the Light##16112
  turnin Ramaladni's Icy Grasp##9230 |goto Eastern Plaguelands 71.95,48.52
]])
