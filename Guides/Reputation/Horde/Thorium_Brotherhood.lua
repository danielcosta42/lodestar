-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Horde/Thorium Brotherhood", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Hansel Heavyhands##14627
  accept Curse These Fat Fingers##7723 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  accept Fiery Menace!##7724 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  accept Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.58,27.81
step
  talk Master Smith Burninate##14624
  accept What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Derotain Mudsipper##14567
  accept A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  talk Colossus Researcher Eazel##15799
  accept Secrets of the Colossus - Regal##8858 |goto Silithus 49.55,37.31
step
  note Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
  kill Dark Iron Steamsmith##5840 |q 7728 |goto Searing Gorge 40.01,49.65
step
  note Slay 15 Dark Iron Taskmasters and 15 Dark Iron Slavers. Return to Taskmaster Scrange in the Searing Gorge once you have accomplished this task.
  kill Dark Iron Taskmaster##5846 |q 7729 |goto Searing Gorge 42.74,39.64
step
  note Hansel Heavyhands wants you to kill 20 Heavy War Golems.
  kill Heavy War Golem##5854 |q 7723 |goto Searing Gorge 40.54,45.87
step
  note Hansel Heavyhands wants you to kill 20 Greater Lava Spiders in the Searing Gorge. You can find Greater Lava Spiders in the plateaus and lava pools of the Searing Gorge.
  kill Greater Lava Spider##5858 |q 7724 |goto Searing Gorge 28.94,62.39
step
  note Hansel Heavyhands wants you to kill 20 Incendosaurs.
  kill Incendosaur##9318 |q 7727 |goto Searing Gorge 49.49,26.48
step
  note Deep within the Slag Pit of the Cauldron, in the Searing Gorge, you will find the traitorous Dark Iron dwarf named Overseer Maltorius.
  kill Overseer Maltorius##14621 |q 7701 |goto Searing Gorge 40.77,35.89
step
  note Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
  collect Secret Plans: Fiery Flux##179826 |q 7722 |goto Searing Gorge 40.45,35.74
step
  kill Dark Iron Geologist##5839 |q 6642 |goto Searing Gorge 63.9,59.56
step
  kill Molten Destroyer##11659 |q 6643 |goto Molten Core - Raid -1,-1 |elite
step
  kill Molten Destroyer##11659 |q 6644 |goto Molten Core - Raid -1,-1 |elite
step
  get Favor Amongst the Brotherhood, Core Leather |q 6645 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  kill Firegut Brute##7035 |q 6646 |goto Burning Steppes 81.46,43.38
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  kill Golemagg the Incinerator##11988 |q 7604 |goto Molten Core - Raid -1,-1 |raid
step
  talk Taskmaster Scrange##14626
  turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 38.97,27.51
step
  talk Taskmaster Scrange##14626
  turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 38.97,27.51
step
  talk Hansel Heavyhands##14627
  turnin Curse These Fat Fingers##7723 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  turnin Fiery Menace!##7724 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.58,27.81
step
  talk Lookout Captain Lolo Longstriker##14634
  turnin WANTED: Overseer Maltorius##7701 |goto Searing Gorge 37.74,26.56
step
  talk Master Smith Burninate##14624
  turnin What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Coren Direbrew##23872
  turnin Seek the Saboteurs##11454 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Lokhtos Darkbargainer##12944
  turnin A Binding Contract##7604 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  talk Derotain Mudsipper##14567
  turnin A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  talk Overseer Oilfist##14625
  turnin Secrets of the Colossus - Regal##8858 |goto Searing Gorge 38.12,26.97
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  talk Master Smith Burninate##14624
  accept Restoring Fiery Flux Supplies via Kingsblood##7736 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  accept Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  accept Restoring Fiery Flux Supplies via Iron##8241 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  accept Restoring Fiery Flux Supplies via Heavy Leather##8242 |goto Searing Gorge 38.8,28.51
step
  get Imperial Plate Belt |q 7653 |goto Tanaris 51.38,28.67
step
  get Imperial Plate Boots |q 7654 |goto Tanaris 51.38,28.67
step
  get Imperial Plate Bracer |q 7655 |goto Tanaris 51.38,28.67
step
  get Imperial Plate Chest |q 7656 |goto Tanaris 51.38,28.67
step
  get Imperial Plate Helm |q 7657 |goto Tanaris 51.38,28.67
step
  get Imperial Plate Leggings |q 7658 |goto Tanaris 51.38,28.67
step
  get Imperial Plate Shoulders |q 7659 |goto Tanaris 51.38,28.67
step
  kill Incendosaur##9318 |q 7736 |goto Searing Gorge 49.49,26.48
step
  kill Anvilrage Overseer##8889 |q 7737 |goto Blackrock Depths - Dungeon -- Shadowforge City -1,-1
step
  kill Incendosaur##9318 |q 8241 |goto Searing Gorge 49.49,26.48
step
  kill Incendosaur##9318 |q 8242 |goto Searing Gorge 49.49,26.48
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  talk Master Smith Burninate##14624
  turnin Restoring Fiery Flux Supplies via Kingsblood##7736 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  turnin Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  turnin Restoring Fiery Flux Supplies via Iron##8241 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  turnin Restoring Fiery Flux Supplies via Heavy Leather##8242 |goto Searing Gorge 38.8,28.51
]])
