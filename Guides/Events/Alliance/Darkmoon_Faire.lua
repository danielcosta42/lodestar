-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Darkmoon Faire", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "d08395db",
}, [[
step
  talk Gelvas Grimegate##14828
  accept 5 Tickets - Darkmoon Flower##7930 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7930 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 5 Tickets - Darkmoon Flower##7930 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 5 Tickets - Minor Darkmoon Prize##7931 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7931 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 5 Tickets - Minor Darkmoon Prize##7931 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 12 Tickets - Lesser Darkmoon Prize##7932 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7932 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 12 Tickets - Lesser Darkmoon Prize##7932 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 40 Tickets - Greater Darkmoon Prize##7933 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7933 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 40 Tickets - Greater Darkmoon Prize##7933 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 50 Tickets - Darkmoon Storage Box##7934 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7934 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 50 Tickets - Darkmoon Storage Box##7934 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 10 Tickets - Last Month's Mutton##7935 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7935 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 10 Tickets - Last Month's Mutton##7935 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 50 Tickets - Last Year's Mutton##7936 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7936 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 50 Tickets - Last Year's Mutton##7936 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 1200 Tickets - Orb of the Darkmoon##7940 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7940 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 1200 Tickets - Orb of the Darkmoon##7940 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  accept 1200 Tickets - Amulet of the Darkmoon##7981 |goto Elwynn Forest 41.5,68.87
step
  collect Darkmoon Faire Prize Ticket##19182 |q 7981 |goto Elwynn Forest 41.5,68.87
step
  talk Gelvas Grimegate##14828
  turnin 1200 Tickets - Amulet of the Darkmoon##7981 |goto Elwynn Forest 41.5,68.87
step
  talk Sayge##14822 |goto Elwynn Forest 42.13,69 |tip They give you the item that starts the quest.
  accept Your Fortune Awaits You...##7937 |goto Elwynn Forest 42.13,69
step
  turnin Your Fortune Awaits You...##7937 |goto Elwynn Forest 84.85,64.41
step
  talk Sayge##14822 |goto Elwynn Forest 42.13,69 |tip They give you the item that starts the quest.
  accept Your Fortune Awaits You...##7938 |goto Elwynn Forest 42.13,69
step
  turnin Your Fortune Awaits You...##7938 |goto The Deadmines - Dungeon -1,-1
step
  talk Sayge##14822 |goto Elwynn Forest 42.13,69 |tip They give you the item that starts the quest.
  accept Your Fortune Awaits You...##7944 |goto Elwynn Forest 42.13,69
step
  turnin Your Fortune Awaits You...##7944 |goto Wailing Caverns - Dungeon -1,-1
step
  talk Sayge##14822 |goto Elwynn Forest 42.13,69 |tip They give you the item that starts the quest.
  accept Your Fortune Awaits You...##7945 |goto Elwynn Forest 42.13,69
step
  turnin Your Fortune Awaits You...##7945 |goto Mulgore 36.23,64.55
step
  talk Yebb Neblegear##14829
  accept Small Furry Paws##7899 |goto Elwynn Forest 40.17,69.53
step
  collect Small Furry Paw##5134 |q 7899 |goto Darkshore 43.81,65.65 |tip {dropsfrom}Moonstalker, Moonstalker Runt, Moonstalker Matriarch
step
  talk Yebb Neblegear##14829
  turnin Small Furry Paws##7899 |goto Elwynn Forest 40.17,69.53
step
  talk Yebb Neblegear##14829
  accept Torn Bear Pelts##7900 |goto Elwynn Forest 40.17,69.53
step
  collect Torn Bear Pelt##11407 |q 7900 |goto Hillsbrad Foothills 59.07,32.75 |tip {dropsfrom}Gray Bear, Vicious Gray Bear, Elder Gray Bear
step
  talk Yebb Neblegear##14829
  turnin Torn Bear Pelts##7900 |goto Elwynn Forest 40.17,69.53
step
  talk Yebb Neblegear##14829
  accept Soft Bushy Tails##7901 |goto Elwynn Forest 40.17,69.53
step
  collect Soft Bushy Tail##4582 |q 7901 |goto Badlands 49.87,41.92 |tip {dropsfrom}Crag Coyote, Feral Crag Coyote, Elder Crag Coyote
step
  talk Yebb Neblegear##14829
  turnin Soft Bushy Tails##7901 |goto Elwynn Forest 40.17,69.53
step
  talk Yebb Neblegear##14829
  accept Vibrant Plumes##7902 |goto Elwynn Forest 40.17,69.53
step
  collect Vibrant Plume##5117 |q 7902 |goto Western Plaguelands 32.26,62.39 |tip {dropsfrom}Carrion Vulture, Vicious Owlbeast, Primitive Owlbeast
step
  talk Yebb Neblegear##14829
  turnin Vibrant Plumes##7902 |goto Elwynn Forest 40.17,69.53
step
  talk Yebb Neblegear##14829
  accept Evil Bat Eyes##7903 |goto Elwynn Forest 40.17,69.53
step
  collect Evil Bat Eye##11404 |q 7903 |goto Eastern Plaguelands 28.22,64.82 |tip {dropsfrom}Plaguebat, Noxious Plaguebat, Monstrous Plaguebat
step
  talk Yebb Neblegear##14829
  turnin Evil Bat Eyes##7903 |goto Elwynn Forest 40.17,69.53
step
  talk Yebb Neblegear##14829
  accept More Bat Eyes##7943 |goto Elwynn Forest 40.17,69.53
step
  collect Evil Bat Eye##11404 |q 7943 |goto Eastern Plaguelands 28.22,64.82 |tip {dropsfrom}Plaguebat, Noxious Plaguebat, Monstrous Plaguebat
step
  talk Yebb Neblegear##14829
  turnin More Bat Eyes##7943 |goto Elwynn Forest 40.17,69.53
step
  talk Yebb Neblegear##14829
  accept Glowing Scorpid Blood##8222 |goto Elwynn Forest 40.17,69.53
step
  collect Glowing Scorpid Blood##19933 |q 8222 |goto Blasted Lands 47.8,22.4 |tip {dropsfrom}Scorpok Stinger, Deep Stinger, Clack the Reaver
step
  talk Yebb Neblegear##14829
  turnin Glowing Scorpid Blood##8222 |goto Elwynn Forest 40.17,69.53
step
  talk Yebb Neblegear##14829
  accept More Glowing Scorpid Blood##8223 |goto Elwynn Forest 40.17,69.53
step
  collect Glowing Scorpid Blood##19933 |q 8223 |goto Blasted Lands 47.8,22.4 |tip {dropsfrom}Scorpok Stinger, Deep Stinger, Clack the Reaver
step
  talk Yebb Neblegear##14829
  turnin More Glowing Scorpid Blood##8223 |goto Elwynn Forest 40.17,69.53
step
  talk Kerri Hicks##14832
  accept Coarse Weightstone##7889 |goto Elwynn Forest 40.49,69.93
step
  collect Coarse Weightstone##3240 |q 7889 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  turnin Coarse Weightstone##7889 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  accept Heavy Grinding Stone##7890 |goto Elwynn Forest 40.49,69.93
step
  collect Heavy Grinding Stone##3486 |q 7890 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  turnin Heavy Grinding Stone##7890 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  accept Green Iron Bracers##7891 |goto Elwynn Forest 40.49,69.93
step
  collect Green Iron Bracers##3835 |q 7891 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  turnin Green Iron Bracers##7891 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  accept Big Black Mace##7892 |goto Elwynn Forest 40.49,69.93
step
  collect Big Black Mace##7945 |q 7892 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  turnin Big Black Mace##7892 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  accept Rituals of Strength##7893 |goto Elwynn Forest 40.49,69.93
step
  collect Dense Grinding Stone##12644 |q 7893 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  turnin Rituals of Strength##7893 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  accept More Dense Grinding Stones##7939 |goto Elwynn Forest 40.49,69.93
step
  collect Dense Grinding Stone##12644 |q 7939 |goto Elwynn Forest 40.49,69.93
step
  talk Kerri Hicks##14832
  turnin More Dense Grinding Stones##7939 |goto Elwynn Forest 40.49,69.93
step
  talk Morja##14871
  accept Spawn of Jubjub##7946 |goto Elwynn Forest 43.34,70.28
step
  collect Dark Iron Ale Mug##11325 |q 7946 |goto Duskwood 78.99,44.35 |tip {dropsfrom}Whit Wantmal, Anvilrage Officer, Grim Patron
step
  talk Morja##14871
  turnin Spawn of Jubjub##7946 |goto Elwynn Forest 43.34,70.28
step
  talk Rinling##14841
  accept Copper Modulator##7894 |goto Elwynn Forest 41.71,70.72
step
  collect Copper Modulator##4363 |q 7894 |goto Westfall 47.88,33.47 |tip {dropsfrom}Harvest Golem, Harvest Watcher, Harvest Reaper
step
  talk Rinling##14841
  turnin Copper Modulator##7894 |goto Elwynn Forest 41.71,70.72
step
  talk Rinling##14841
  accept Whirring Bronze Gizmo##7895 |goto Elwynn Forest 41.71,70.72
step
  collect Whirring Bronze Gizmo##4375 |q 7895 |goto Redridge Mountains 30.44,9.92 |tip {dropsfrom}Blackrock Tracker, Scarlet Paladin, Narillasanz
step
  talk Rinling##14841
  turnin Whirring Bronze Gizmo##7895 |goto Elwynn Forest 41.71,70.72
step
  talk Rinling##14841
  accept Green Fireworks##7896 |goto Elwynn Forest 41.71,70.72
step
  collect Green Firework##9313 |q 7896 |goto Elwynn Forest 41.71,70.72
step
  talk Rinling##14841
  turnin Green Fireworks##7896 |goto Elwynn Forest 41.71,70.72
step
  talk Rinling##14841
  accept Mechanical Repair Kits##7897 |goto Elwynn Forest 41.71,70.72
step
  collect Mechanical Repair Kit##11590 |q 7897 |goto Elwynn Forest 41.71,70.72
step
  talk Rinling##14841
  turnin Mechanical Repair Kits##7897 |goto Elwynn Forest 41.71,70.72
step
  talk Rinling##14841
  accept Thorium Widget##7898 |goto Elwynn Forest 41.71,70.72
step
  collect Thorium Widget##15994 |q 7898 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Anvilrage Marshal, Rage Talon Dragonspawn, Blackhand Iron Guard
step
  talk Rinling##14841
  turnin Thorium Widget##7898 |goto Elwynn Forest 41.71,70.72
step
  talk Rinling##14841
  accept More Thorium Widgets##7942 |goto Elwynn Forest 41.71,70.72
step
  collect Thorium Widget##15994 |q 7942 |goto Blackrock Depths - Dungeon -1,-1 |tip {dropsfrom}Anvilrage Marshal, Rage Talon Dragonspawn, Blackhand Iron Guard
step
  talk Rinling##14841
  turnin More Thorium Widgets##7942 |goto Elwynn Forest 41.71,70.72
step
  talk Chronos##14833
  accept Carnival Boots##7881 |goto Elwynn Forest 43.61,70.84
step
  collect Embossed Leather Boots##2309 |q 7881 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  turnin Carnival Boots##7881 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  accept Carnival Jerkins##7882 |goto Elwynn Forest 43.61,70.84
step
  collect Toughened Leather Armor##2314 |q 7882 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  turnin Carnival Jerkins##7882 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  accept The World's Largest Gnome!##7883 |goto Elwynn Forest 43.61,70.84
step
  collect Barbaric Harness##5739 |q 7883 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  turnin The World's Largest Gnome!##7883 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  accept Crocolisk Boy and the Bearded Murloc##7884 |goto Elwynn Forest 43.61,70.84
step
  collect Turtle Scale Leggings##8185 |q 7884 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  turnin Crocolisk Boy and the Bearded Murloc##7884 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  accept Armor Kits##7885 |goto Elwynn Forest 43.61,70.84
step
  collect Rugged Armor Kit##15564 |q 7885 |goto Tanaris 40.18,63.89 |tip {dropsfrom}Rabid Blisterpaw, Scorching Elemental, Larion
step
  talk Chronos##14833
  turnin Armor Kits##7885 |goto Elwynn Forest 43.61,70.84
step
  talk Chronos##14833
  accept More Armor Kits##7941 |goto Elwynn Forest 43.61,70.84
step
  collect Rugged Armor Kit##15564 |q 7941 |goto Tanaris 40.18,63.89 |tip {dropsfrom}Rabid Blisterpaw, Scorching Elemental, Larion
step
  talk Chronos##14833
  turnin More Armor Kits##7941 |goto Elwynn Forest 43.61,70.84
]])
