-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Thorium Brotherhood", {
	faction = "Alliance",
	author = "Lodestar Generator",
	rev = "7c0897d3",
}, [[
step
  click Wanted/Missing/Lost & Found##179827
  accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 37.65,26.47
step
  note Find and return the Smithing Tuyere and Lookout's Spyglass to Taskmaster Scrange in the Searing Gorge.
  collect Smithing Tuyere##18959 |q 7728/1 |goto Searing Gorge 40.58,49.48 |tip {dropsfrom}Dark Iron Steamsmith
  collect Lookout's Spyglass##18960 |q 7728 |goto Searing Gorge 42.72,62.57 |tip {dropsfrom}Dark Iron Lookout
step
  talk Taskmaster Scrange##14626
  turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 38.97,27.51
step
  click Wanted/Missing/Lost & Found##179827
  accept JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 37.65,26.47
step
  note Slay 15 Dark Iron Taskmasters and 15 Dark Iron Slavers. Return to Taskmaster Scrange in the Searing Gorge once you have accomplished this task.
  kill Dark Iron Taskmaster##5846 |q 7729/1 |goto Searing Gorge 43.12,40.37
  kill Dark Iron Slaver##5844 |q 7729 |goto Searing Gorge 41.01,43.82
step
  talk Taskmaster Scrange##14626
  turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 38.97,27.51
step
  talk Hansel Heavyhands##14627
  accept Curse These Fat Fingers##7723 |goto Searing Gorge 38.58,27.81
step
  note Hansel Heavyhands wants you to kill 20 Heavy War Golems.
  kill Heavy War Golem##5854 |q 7723 |goto Searing Gorge 39.86,44.17
step
  talk Hansel Heavyhands##14627
  turnin Curse These Fat Fingers##7723 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  accept Fiery Menace!##7724 |goto Searing Gorge 38.58,27.81
step
  note Hansel Heavyhands wants you to kill 20 Greater Lava Spiders in the Searing Gorge. You can find Greater Lava Spiders in the plateaus and lava pools of the Searing Gorge.
  kill Greater Lava Spider##5858 |q 7724 |goto Searing Gorge 29.31,62.39
step
  talk Hansel Heavyhands##14627
  turnin Fiery Menace!##7724 |goto Searing Gorge 38.58,27.81
step
  talk Hansel Heavyhands##14627
  accept Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.58,27.81
step
  note Hansel Heavyhands wants you to kill 20 Incendosaurs.
  kill Incendosaur##9318 |q 7727 |goto Searing Gorge 48.46,26.48
step
  talk Hansel Heavyhands##14627
  turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.58,27.81
step
  click Wanted/Missing/Lost & Found##179827
  accept WANTED: Overseer Maltorius##7701 |goto Searing Gorge 37.65,26.47
step
  note Deep within the Slag Pit of the Cauldron, in the Searing Gorge, you will find the traitorous Dark Iron dwarf named Overseer Maltorius.
  kill Overseer Maltorius##14621 |q 7701 |goto Searing Gorge 40.77,35.89 |elite
  collect Head of Overseer Maltorius##18946 |q 7701 |goto Searing Gorge 40.77,35.89
step
  talk Lookout Captain Lolo Longstriker##14634
  turnin WANTED: Overseer Maltorius##7701 |goto Searing Gorge 37.74,26.56
step
  talk Master Smith Burninate##14624
  accept What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  note Somewhere in the Slag Pit of the Cauldron you will find the Secret Plans: Fiery Flux that Overseer Maltorius stole. Find those plans and return them to Master Smith Burninate in the Searing Gorge.
  collect Secret Plans: Fiery Flux##18922 |q 7722 |goto Searing Gorge 40.45,35.74
step
  talk Master Smith Burninate##14624
  turnin What the Flux?##7722 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  accept Restoring Fiery Flux Supplies via Kingsblood##7736 |goto Searing Gorge 38.8,28.51
step
  collect Incendosaur Scale##18944 |q 7736/1 |goto Searing Gorge 48.46,26.48 |tip {dropsfrom}Incendosaur
  collect Kingsblood##3356 |q 7736/2 |goto Stranglethorn Vale 38.23,34.25
  talk Karm Ironquill##372
  buy Coal##3857 |q 7736 |goto Loch Modan 37.13,47.16
step
  talk Master Smith Burninate##14624
  turnin Restoring Fiery Flux Supplies via Kingsblood##7736 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  accept Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  collect Dark Iron Residue##18945 |q 7737 |goto Blackrock Depths - Dungeon -1,-1 |elite |tip {dropsfrom}Shadowforge Peasant, Anvilrage Overseer, Anvilrage Warden
step
  talk Master Smith Burninate##14624
  turnin Gaining Acceptance##7737 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  accept Restoring Fiery Flux Supplies via Iron##8241 |goto Searing Gorge 38.8,28.51
step
  collect Incendosaur Scale##18944 |q 8241/1 |goto Searing Gorge 48.46,26.48 |tip {dropsfrom}Incendosaur
  collect Iron Bar##3575 |q 8241/2 |tip Crafted or bought.
  talk Karm Ironquill##372
  buy Coal##3857 |q 8241 |goto Loch Modan 37.13,47.16
step
  talk Master Smith Burninate##14624
  turnin Restoring Fiery Flux Supplies via Iron##8241 |goto Searing Gorge 38.8,28.51
step
  talk Master Smith Burninate##14624
  accept Restoring Fiery Flux Supplies via Heavy Leather##8242 |goto Searing Gorge 38.8,28.51
step
  collect Incendosaur Scale##18944 |q 8242/1 |goto Searing Gorge 48.46,26.48 |tip {dropsfrom}Incendosaur
  talk Lhara##14846
  collect Heavy Leather##4234 |q 8242/2 |goto Elwynn Forest 41.2,69.9
  talk Karm Ironquill##372
  buy Coal##3857 |q 8242 |goto Loch Modan 37.13,47.16
step
  talk Master Smith Burninate##14624
  turnin Restoring Fiery Flux Supplies via Heavy Leather##8242 |goto Searing Gorge 38.8,28.51
step
  talk Colossus Researcher Eazel##15799
  accept Secrets of the Colossus - Regal##8858 |goto Silithus 49.55,37.31
step
  note Take the Colossus of Regal's Husk to Overseer Oilfist in Searing Gorge.
  talk Overseer Oilfist##14625
  turnin Secrets of the Colossus - Regal##8858 |goto Searing Gorge 38.12,26.97
step
  talk Derotain Mudsipper##14567
  accept A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  turnin A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7653 |goto Tanaris 51.38,28.67 |tip Crafted or bought.
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Belt##7653 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7654 |goto Tanaris 51.38,28.67 |tip Crafted or bought.
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Boots##7654 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7655 |goto Tanaris 51.38,28.67 |tip Crafted or bought.
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Bracer##7655 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7656 |goto Tanaris 51.38,28.67 |tip Crafted or bought.
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Chest##7656 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7657 |goto Tanaris 51.38,28.67 |tip Crafted or bought.
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Helm##7657 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7658 |goto Tanaris 51.38,28.67 |tip Crafted or bought.
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Leggings##7658 |goto Tanaris 51.38,28.67
step
  talk Derotain Mudsipper##14567
  accept Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  collect Thorium Bar##12359 |q 7659 |goto Tanaris 51.38,28.67 |tip Crafted or bought.
step
  talk Derotain Mudsipper##14567
  turnin Imperial Plate Shoulders##7659 |goto Tanaris 51.38,28.67
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Dark Iron Ore##11370 |q 6642 |goto Burning Steppes 64.33,43.33 |tip {dropsfrom}Dark Iron Deposit
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Fiery Core##17010 |q 6643 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Firewalker, Flameguard, Firelord
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Fiery Core##6643 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Lava Core##17011 |q 6644 |goto Molten Core - Dungeon -1,-1 |elite |tip {dropsfrom}Lava Annihilator, Lava Elemental, Lava Reaver
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Lava Core##6644 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Core Leather##17012 |q 6645 |goto Blackrock Depths - Dungeon -1,-1 |tip Crafted or bought.
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Core Leather##6645 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944
  accept Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  collect Blood of the Mountain##11382 |q 6646 |goto Burning Steppes 80.56,42.82 |tip {dropsfrom}Firegut Brute, War Reaver, Scalding Broodling
step
  talk Lokhtos Darkbargainer##12944
  turnin Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto Blackrock Depths - Dungeon -1,-1
step
  talk Lokhtos Darkbargainer##12944 |goto Blackrock Depths - Dungeon -1,-1 |tip They give you the item that starts the quest.
  accept A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
step
  note Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron.
  collect Sulfuron Ingot##17203 |q 7604 |goto Molten Core - Dungeon -1,-1 |raid |tip {dropsfrom}Golemagg the Incinerator
step
  talk Lokhtos Darkbargainer##12944
  turnin A Binding Contract##7604 |goto Blackrock Depths - Dungeon -1,-1
]])
