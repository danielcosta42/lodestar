-- AUTO-GERADO pelo roteador Lodestar. Fonte: QuestieDB do Forever (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Alliance/Mount Hyjal (56-59)", {
	faction = "Alliance",
	author = "Lodestar Generator",
	next = "Leveling/Alliance/Silithus (57-60)",
	rev = "7936014a",
}, [[
step
  ding 55
step
  only haveq(91952)
  note Find the hermit Ketharas on Mount Hyjal.
  talk Ketharas##256222
  turnin The Source of the Corruption##91952 |goto Mount Hyjal 73.34,81.88
step
  click Loose Cog##650234
  accept One Person's Trash##94479 |goto Mount Hyjal 75.27,77.38
step
  talk Ketharas##256222
  accept Seeds for a New Season##95568 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept Hope for Hatchlings##95569 |goto Mount Hyjal 73.34,81.88
step
  note Search the Tainted Foothills for someone interested in the metallic piece you found.
  talk Ketharas##256222
  turnin One Person's Trash##94479 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept Woods Workshop##96796 |goto Mount Hyjal 73.34,81.88
step
  note Bring the Spare Part to the tinker known as Kaylaena in lower Hyjal.
  talk Kaylaena Springwhisper##249235
  turnin Woods Workshop##96796 |goto Mount Hyjal 60.1,61.18
step
  talk Kaylaena Springwhisper##249235
  accept Premiere Parts##92008 |goto Mount Hyjal 60.1,61.18
step
  talk Kaylaena Springwhisper##249235
  accept Kindling, Kinda##92594 |goto Mount Hyjal 60.1,61.18
step
  note Retrieve Kaylaena Springbolt's parts order from Nami in Everlook.
  talk Nami##228216
  turnin Premiere Parts##92008 |goto Mount Hyjal 60.1,61.18
step
  talk Nami##228216
  accept Crate Expectations##92009 |goto Mount Hyjal 60.1,61.18
step
  note Gently transport the crate of parts and baubles to Kaylaena Springwhisper in Mount Hyjal.
  goto Mount Hyjal 60.41,62.16 |tip Shipment delivered to Mount Hyjal before it expires
step
  talk Kaylaena Springwhisper##249235
  turnin Crate Expectations##92009 |goto Mount Hyjal 60.1,61.18
step
  note Destroy 15 Tainted Shrubbery for Kaylaena Springwhisper at the workshop in the Tainted Foothills.
  kill Tainted Shrubbery##248395 |q 92594 |goto Mount Hyjal 62.69,70.01
step
  talk Kaylaena Springwhisper##249235
  turnin Kindling, Kinda##92594 |goto Mount Hyjal 60.1,61.18
step
  only haveq(92020)
  note Take Hol'anyee's Big Book of Big Lizards to a druid at the summit of Mount Hyjal.
  talk Tiala Whitemane##40833
  turnin Hol'anyee's Big Book of Big Lizards##92020 |goto Mount Hyjal 68.85,50.6
step
  only not completed(96830) not haveq(96830)
  talk Quintus Wainworth##266803
  accept Venom Maws##96833 |goto Mount Hyjal 79.85,70.69
step
  note Collect 10 Untainted Seeds for Ketharas.
  collect 10 Untainted Seed##260176 |q 95568 |goto Mount Hyjal 77.31,72.41 |tip {dropsfrom}Untainted Flower
step
  note Rescue 12 Hyjal Owl Eggs and bring them to Ketharas.
  collect 12 Hyjal Owl Egg##269920 |q 95569 |goto Mount Hyjal 76.78,75.49
step
  talk Ketharas##256222
  turnin Seeds for a New Season##95568 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  turnin Hope for Hatchlings##95569 |goto Mount Hyjal 73.34,81.88
step
  only not completed(96830) not haveq(96830)
  note Pass on the warning of the aggressive chimaera known as Ghansurok to others on the mountain.
  talk Ketharas##256222
  turnin Venom Maws##96833 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept Violence Into Verdure##93747 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept The Bounty of Nature##93759 |goto Mount Hyjal 73.34,81.88
step
  note Plant the Enchanted Seeds near the Ruined Ballista, the Ruined Catapult, and the Ruined Flying Machine.
  talk Ketharas##256222
  turnin Violence Into Verdure##93747 |goto Mount Hyjal 73.34,81.88
step
  note Collect 2 Hyjal Venison Cuts from untainted Hyjal Stags and 6 Scarlet Dart Tubers for the hermit's stew.
  collect 2 Hyjal Venison Cut##251641 |q 93759/1 |goto Mount Hyjal 71.19,72.27 |tip {dropsfrom}Hyjal Stag, Predatory Hyjal Stag
  collect 6 Scarlet Dart Tuber##267289 |q 93759 |goto Mount Hyjal 69.86,72.25
step
  talk Ketharas##256222
  turnin The Bounty of Nature##93759 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept Rites of Respect##95611 |goto Mount Hyjal 73.34,81.88
step
  note Bury the remains at Ketharas' shrine.
  talk Ketharas##256222
  turnin Rites of Respect##95611 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept Ancient Allies##90487 |goto Mount Hyjal 73.34,81.88
step
  note Travel west from the hermit's cave to find an outpost of ancients and dryads on the lower slopes of Mount Hyjal.
  talk Fraxinus##248366
  turnin Ancient Allies##90487 |goto Mount Hyjal 53.33,84.26
step
  talk Hyacinth##248367
  accept Rub Some Dirt In It##91754 |goto Mount Hyjal 54.05,84.39
step
  talk Hyacinth##248367
  accept Leaves to Ligatures##91755 |goto Mount Hyjal 54.05,84.39
step
  only completed(95316) not completed(94782) not haveq(94782)
  talk Curious Crow##257753
  accept The Western Post##91881 |goto Mount Hyjal 48.26,85.72
step
  only level>=57
  talk Thylaen##265586
  accept Celastrus the Bitter##91923 |goto Mount Hyjal 54.83,84.56
step
  talk Curious Crow##257753
  accept Notation, Notation, Notation##95317 |goto Mount Hyjal 48.26,85.72
step
  talk Curious Crow##257753
  accept A Curious Question##95320 |goto Mount Hyjal 48.26,85.72
step
  note Find the imprisoned demon.
  talk Felflick##263757
  turnin A Curious Question##95320 |goto Mount Hyjal 48.58,73.54
step
  talk Felflick##263757
  accept Taste of Ash##95318 |goto Mount Hyjal 48.58,73.54
step
  note Find 12 Fel Ash Experimentation Notes.
  collect 12 Fel Ash Experimentation Notes##274396 |q 95317 |goto Mount Hyjal 49.32,69.52 |tip {dropsfrom}Ashen Acolyte
step
  note Slay 12 Ashen Acolytes.
  kill Ashen Acolyte##260422 |q 95318 |goto Mount Hyjal 49.32,69.52
step
  talk Felflick##263757
  turnin Taste of Ash##95318 |goto Mount Hyjal 48.58,73.54
step
  talk Felflick##263757
  accept Crystalline Collection##95319 |goto Mount Hyjal 48.58,73.54
step
  talk Curious Crow##257753
  turnin Notation, Notation, Notation##95317 |goto Mount Hyjal 48.26,85.72
step
  talk Curious Crow##257753
  accept A Prolific Source##95380 |goto Mount Hyjal 48.26,85.72
step
  talk Curious Crow##257753
  accept Prickly Pinecones##96262 |goto Mount Hyjal 48.26,85.72
step
  note Gather 8 Fel-Slime Crystals and 1 Pristine Fel-Slime Crystal.
  collect 1 Pristine Fel-Slime Crystal##268990 |q 95319/2 |goto Mount Hyjal 48.06,82.65 |tip {dropsfrom}Pristine Crystallized Fel-Slime
  collect 8 Fel-Slime Crystal##274412 |q 95319 |goto Mount Hyjal 44.65,81.9 |tip {dropsfrom}Crystallized Fel-Slime
step
  note Collect 10 Prickly Pinecones under healthy trees.
  collect 10 Prickly Pinecone##273304 |q 96262 |goto Mount Hyjal 48.16,87.97
step
  talk Curious Crow##257753
  turnin Prickly Pinecones##96262 |goto Mount Hyjal 48.26,85.72
step
  talk Felflick##263757
  turnin Crystalline Collection##95319 |goto Mount Hyjal 48.58,73.54
step
  talk Felflick##263757
  accept The Hydra's Head##95378 |goto Mount Hyjal 48.58,73.54
step
  talk Felflick##263757
  accept A Revenge So Sweet##95379 |goto Mount Hyjal 48.58,73.54
step
  note Retrieve the bones of Frezzlie Popwhiz, Tyaeha Darkoath and Dazka Shadowsleep.
  collect Bones of Tyaeha Darkoath##273291 |q 95378/1 |goto Mount Hyjal 46.36,68.96 |tip {dropsfrom}Tyaeha Darkoath
  collect Bones of Dazka Shadowsleep##273292 |q 95378/2 |goto Mount Hyjal 45.18,69.45 |tip {dropsfrom}Dazka Shadowsleep
  collect Bones of Frezzlie Popwhiz##273290 |q 95378 |goto Mount Hyjal 42.93,71.67 |tip {dropsfrom}Frezzlie Popwhiz
step
  note Slay Brashann Grimdark and search his body for his soulstone.
  kill Brashann Grimdark##260440 |q 95379 |goto Mount Hyjal 49.73,70.76
step
  talk Felflick##263757
  turnin The Hydra's Head##95378 |goto Mount Hyjal 48.58,73.54
step
  talk Felflick##263757
  turnin A Revenge So Sweet##95379 |goto Mount Hyjal 48.58,73.54
step
  talk Felflick##263757
  accept A Fitting End##96435 |goto Mount Hyjal 48.58,73.54
step
  note Throw the warlock bones onto the bone pile near the slime pools.
  turnin A Fitting End##96435 |goto Mount Hyjal 40.83,80.24
step
  only level>=58
  click Bone Pile##652449
  accept Amalgamated Marrow##96255 |goto Mount Hyjal 40.83,80.24
step
  talk Velician##278305
  accept The Dying God##96321 |goto Mount Hyjal 36.68,78.23
step
  only haveq(96255)
  note Slay the Awakened Fel Ash Slime.
  kill Awakened Fel Ash Slime##264306 |q 96255 |goto Mount Hyjal 40.71,80.36 |elite
step
  only haveq(96255)
  talk Felflick##263757
  turnin Amalgamated Marrow##96255 |goto Mount Hyjal 48.58,73.54
step
  only completed(96255)
  talk Felflick##263757
  accept A Revenge Now Bitter##96322 |goto Mount Hyjal 48.58,73.54
step
  note Find someone on Mount Hyjal who may be interested in the Faintly Glowing Staff.
  talk Curious Crow##257753
  turnin The Dying God##96321 |goto Mount Hyjal 48.26,85.72
step
  only haveq(96322)
  note Speak to Felflick.
  talk Curious Crow##257753
  turnin A Revenge Now Bitter##96322 |goto Mount Hyjal 48.26,85.72
step
  talk Curious Crow##257753
  accept An Oldstone But An Old Friend##96131 |goto Mount Hyjal 48.26,85.72
step
  note Collect 6 samples of Untainted Soil from around the foothills of Mount Hyjal.
  collect 6 Untainted Soil##247889 |q 91754 |goto Mount Hyjal 61.54,83.43
step
  note Collect 12 Verdant Leaves from Tainted Shrubbery in the foothills of Mount Hyjal.
  collect 12 Verdant Leaves##247892 |q 91755 |goto Mount Hyjal 62.69,70.01 |tip {dropsfrom}Tainted Shrubbery
step
  only haveq(91923)
  note Find and destroy Celastrus the Bitter, and return to Thylaen with its broken frond.
  kill Celastrus the Bitter##249051 |q 91923 |goto Mount Hyjal 65.82,72.76 |elite
  collect Broken Frond of Celastrus##282028 |q 91923 |goto Mount Hyjal 65.82,72.76
step
  note Take the Faintly Glowing Branch to Ketharas.
  talk Ketharas##256222
  turnin An Oldstone But An Old Friend##96131 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept Aid from Moonglade##92612 |goto Mount Hyjal 73.34,81.88
step
  note Gather 8 Fel-Slime Ooze.
  collect 8 Fel-Slime Ooze##273008 |q 95380 |goto Mount Hyjal 71.05,77.5 |tip {dropsfrom}Noxious Slime
step
  talk Hyacinth##248367
  turnin Rub Some Dirt In It##91754 |goto Mount Hyjal 54.05,84.39
step
  talk Hyacinth##248367
  turnin Leaves to Ligatures##91755 |goto Mount Hyjal 54.05,84.39
step
  only haveq(91923)
  talk Thylaen##265586
  turnin Celastrus the Bitter##91923 |goto Mount Hyjal 54.83,84.56
step
  talk Curious Crow##257753
  turnin A Prolific Source##95380 |goto Mount Hyjal 48.26,85.72
step
  talk Hyacinth##248367
  accept Bark Bite##91770 |goto Mount Hyjal 54.05,84.39
step
  note Apply the poultice to Fraxinus.
  talk Fraxinus##248366 |q 91770 |goto Mount Hyjal 53.33,84.26
step
  talk Fraxinus##248366
  turnin Bark Bite##91770 |goto Mount Hyjal 53.33,84.26
step
  talk Fraxinus##248366
  accept Fine Feathered Friend##95766 |goto Mount Hyjal 53.33,84.26
step
  talk Fraxinus##248366
  accept The Dying Ancients##92959 |goto Mount Hyjal 53.33,84.26
step
  note Hunt down and destroy the corrupted ancient Sunderbark, then plant a seed in his remains.
  talk Fraxinus##248366
  turnin The Dying Ancients##92959 |goto Mount Hyjal 53.33,84.26
step
  note Find the strange bird in the corrupted lands on the southwest slope.
  talk Curious Crow##257753
  turnin Fine Feathered Friend##95766 |goto Mount Hyjal 48.26,85.72
step
  talk Phoebe Highfeather##260825
  accept Highfeather Helper##92147 |goto Mount Hyjal 54.48,63.91
step
  talk Phoebe Highfeather##260825
  accept Tarnished Treasures##96252 |goto Mount Hyjal 54.48,63.91
step
  talk Kaylaena Springwhisper##249235
  accept Rubble Rummage##92011 |goto Mount Hyjal 60.1,61.18
step
  click Corrupted Growth##651409
  accept Fetid Corruption##96296 |goto Mount Hyjal 48.54,56.33
step
  note Slay 18 Wormwing harpies on Mount Hyjal and bring their feathers to Phoebe Highfeather.
  collect 18 Wormwing Pinfeather##268997 |q 92147 |goto Mount Hyjal 48.47,55.66 |tip {dropsfrom}Wormwing Harpy, Wormwing Windwitch, Wormwing Ambusher
step
  note Collect 8 Tarnished Highfeather Bangles from Wormwing Harpy nests.
  collect 8 Tarnished Highfeather Bangle##273164 |q 96252 |goto Mount Hyjal 47.73,59.38
step
  note Find and remove 6 Corrupted Knots from the trees nearby.
  click Corrupted Growth##651409 |q 96296 |goto Mount Hyjal 48.54,56.33
step
  talk Lisbael Highfeather##268168
  accept Past Wing and Claw##96145 |goto Mount Hyjal 42.06,52.08
step
  talk Shalla'kal##255683
  accept Kits and Cats##93615 |goto Mount Hyjal 31.3,50.3
step
  talk Galvinquam Leafsyre##267109
  accept Sacred Refreshment##96979 |goto Mount Hyjal 32.89,54.44
step
  only completed(92102) level>=56
  talk Veteran of the Third War##265375
  accept Ends Meet##93567 |goto Mount Hyjal 27.5,50.9
step
  only completed(92102) haveq(93567)
  note Allow the Veteran of the Third War to tell his story at the broken cannon in Mourning's Rest.
  talk Veteran of the Third War##265375
  turnin Ends Meet##93567 |goto Mount Hyjal 27.5,50.9
step
  note Find Shalla'kal's kittens in the wilds of Mount Hyjal.
  talk Shalla'kal##255683
  turnin Kits and Cats##93615 |goto Mount Hyjal 31.3,50.3
step
  note Fill Galvinquam Leafsyre's drinking gourd at the waterfall ahead.
  talk Galvinquam Leafsyre##267109
  turnin Sacred Refreshment##96979 |goto Mount Hyjal 32.89,54.44
step
  click Unmarked Grave##651262
  accept Disturbed Grave##90702 |goto Mount Hyjal 22.49,48.63
step
  only completed(95316) not completed(94782) not haveq(94782)
  note Meet Sefira Everbright at the outpost.
  talk Sefira Everbright##244517
  turnin The Western Post##91881 |goto Mount Hyjal 15.67,54.66
step
  talk Mirt##248419
  accept Ewe Wandered Off##96674 |goto Mount Hyjal 15.93,52.72
step
  only not completed(92609) not haveq(92609)
  talk Hnaz Blunderflame##249968
  accept Feathers in Flight##95027 |goto Mount Hyjal 15.64,49.99
step
  only not completed(95026) not haveq(95026)
  talk Sefira Everbright##244517
  accept Blight No More##92449 |goto Mount Hyjal 15.67,54.66
step
  note Capture and return 6 Escaped Sheep.
  use Escaped Sheep##265962 |q 96674 |goto Mount Hyjal 12.92,50.41 |tip {useit}
step
  talk Mirt##248419
  turnin Ewe Wandered Off##96674 |goto Mount Hyjal 15.93,52.72
step
  note Search the area for the grave's missing contents.
  collect Ring of the Fallen Soldier##273642 |q 90702 |goto Mount Hyjal 24.01,55.26 |tip {dropsfrom}Fleshflay Ravener, Fleshflayer Ravener
step
  only not completed(95026) not haveq(95026)
  note Eliminate 3 Forgotten Soldiers and 12 Fleshflay Raveners.
  kill Fleshflay Ravener##249228 |q 92449/2 |goto Mount Hyjal 24.01,55.26
  kill Forgotten Soldier##249247 |q 92449 |goto Mount Hyjal 23.64,52.91
step
  talk Sefira Everbright##244517
  turnin Disturbed Grave##90702 |goto Mount Hyjal 15.67,54.66
step
  only not completed(95026) not haveq(95026)
  talk Sefira Everbright##244517
  turnin Blight No More##92449 |goto Mount Hyjal 15.67,54.66
step
  talk Sefira Everbright##244517
  accept More Work?##90750 |goto Mount Hyjal 15.67,54.66
step
  note Speak with the peasant to let him know the job's done.
  talk Daythor Brellan##264521
  turnin More Work?##90750 |goto Mount Hyjal 15.55,52.07
step
  talk Daythor Brellan##264521
  accept More of the Same##95218 |goto Mount Hyjal 15.55,52.07
step
  note Speak with Sefira Everbright.
  talk Sefira Everbright##244517
  turnin More of the Same##95218 |goto Mount Hyjal 15.67,54.66
step
  talk Sefira Everbright##244517
  accept Belle's Ring##94832 |goto Mount Hyjal 15.67,54.66
step
  note Show the ring to Daythor Brellan.
  talk Daythor Brellan##264521
  turnin Belle's Ring##94832 |goto Mount Hyjal 15.55,52.07
step
  talk Eluneth##264089
  accept Eyes of the Watchers##90865 |goto Mount Hyjal 18.78,62.01
step
  talk Veteran of the Third War##255009
  accept Anywhere But Here##92100 |goto Mount Hyjal 20.36,59.31
step
  talk Barkskin Matriarch##244425
  accept Barkskin Breakout##91698 |goto Mount Hyjal 31.5,58.59
step
  note Recover a Deadwood Key from a Deadwood Warden and return to the Barkskin Cage.
  collect Deadwood Key##272936 |q 91698 |goto Mount Hyjal 30.67,58.51 |tip {dropsfrom}Deadwood Warden
step
  talk Barkskin Matriarch##244425
  turnin Barkskin Breakout##91698 |goto Mount Hyjal 31.5,58.59
step
  talk Barkskin Matriarch##244425
  accept Open Season##91696 |goto Mount Hyjal 31.5,58.59
step
  note Escort the Barkskin Matriarch out of Deadwood Den and return to Barkskin Burrow.
  talk Brerufa##256978
  turnin Open Season##91696 |goto Mount Hyjal 20.56,71.73
step
  only not completed(92609) not haveq(92609)
  note Head south into the valley and collect owl feathers from their nests.
  collect Hyjal Owl Feather##253341 |q 95027 |goto Mount Hyjal 34.46,67.93 |tip {dropsfrom}Hyjal Owl, Tainted Hyjal Owl, Hyjal Owl Nest
step
  talk Fenwick Togglespring##249549
  accept Branch Out##92702 |goto Mount Hyjal 25.31,75.87
step
  talk Fennar Mossmane##256626
  accept Herbs of the Hollow##93828 |goto Mount Hyjal 20.16,77.99
step
  note Collect 10 Dried Hanging Herbs from around Barkskin Burrow and return them to Fennar Mossmane.
  get Herbs of the Hollow |q 93828
step
  talk Fennar Mossmane##256626
  accept Water of Hyjal##93830 |goto Mount Hyjal 20.16,77.99
step
  note Fill a waterskin provided by Fennar Mossmane at the pond outside of the Deadwood Furbolg den.
  collect Filled Hyjal Waterskin##263030 |q 93830 |goto Mount Hyjal 20.16,77.99
step
  talk Elder Pinespeaker##256650
  accept Wicked Wisdom##93833 |goto Mount Hyjal 21.77,79.37
step
  talk Dala Fairmaw##256629
  accept Burrow Beetles##93834 |goto Mount Hyjal 21.08,78.51
step
  talk Brerufa##256978
  accept Balance Through Strength##93952 |goto Mount Hyjal 20.56,71.73
step
  talk Elder Mistpaw##256627
  accept Barkskin Beginnings##94504 |goto Mount Hyjal 21.77,78.98
step
  talk Elder Pinespeaker##256650
  accept Burrow Bonding##96666 |goto Mount Hyjal 21.77,79.37
step
  note Locate a sturdy branch capable of reaching Fenwick Togglespring.
  collect Sturdy Tree Branch##274617 |q 92702 |goto Mount Hyjal 24.77,77.69
step
  note Gather 10 Burrow Beetle Bits for Dala Fairmaw.
  collect 10 Burrow Beetle Bits##262803 |q 93834 |goto Mount Hyjal 21.7,78.86 |tip {dropsfrom}Burrow Beetle
step
  talk Fenwick Togglespring##249549
  turnin Branch Out##92702 |goto Mount Hyjal 25.31,75.87
step
  talk Fennar Mossmane##256626
  turnin Herbs of the Hollow##93828 |goto Mount Hyjal 20.16,77.99
step
  talk Fennar Mossmane##256626
  turnin Water of Hyjal##93830 |goto Mount Hyjal 20.16,77.99
step
  talk Dala Fairmaw##256629
  turnin Burrow Beetles##93834 |goto Mount Hyjal 21.08,78.51
step
  note Raise your reputation with the Barkskin Burrow to Neutral.
  talk Elder Mistpaw##256627
  turnin Barkskin Beginnings##94504 |goto Mount Hyjal 21.77,78.98
step
  note Raise your reputation with the Barkskin Burrow to Friendly.
  talk Elder Pinespeaker##256650
  turnin Burrow Bonding##96666 |goto Mount Hyjal 21.77,79.37
step
  talk Fenwick Togglespring##249549
  accept Tree Free##92064 |goto Mount Hyjal 25.31,75.87
step
  talk Elder Mistpaw##256627
  accept Shatter the Stonewatchers##93832 |goto Mount Hyjal 21.77,78.98
step
  talk Elder Mistpaw##256627
  accept Deeproar Down##95107 |goto Mount Hyjal 21.77,78.98
step
  talk Elder Pinespeaker##256650
  accept Mystic Mix##95108 |goto Mount Hyjal 21.77,79.37
step
  talk Fennar Mossmane##256626
  accept Water of Hyjal##95273 |goto Mount Hyjal 20.16,77.99
step
  note Break the tree branch to free Fenwick Togglespring.
  kill Tree Branch##254501 |q 92064 |goto Mount Hyjal 25.27,76.31
step
  talk Fenwick Togglespring##249549
  turnin Tree Free##92064 |goto Mount Hyjal 25.31,75.87
step
  note Kill two Deadwood Death Mystics and destroy two Deadwood Cauldrons within Deadwood Den.
  talk Elder Mistpaw##256627
  turnin Mystic Mix##95108 |goto Mount Hyjal 21.77,78.98
step
  note Empty the Barkskin Purification Tonic provided by Fennar Mossmane in the water at the bottom of Deadwood Den.
  talk Fennar Mossmane##256626
  turnin Water of Hyjal##95273 |goto Mount Hyjal 20.16,77.99
step
  talk Fenwick Togglespring##249549
  accept Supply Drop##96559 |goto Mount Hyjal 25.31,75.87
step
  note Locate Fenwick Togglespring's Pilot Survival Kit.
  talk Personal Survival Pack##254644
  turnin Supply Drop##96559 |goto Mount Hyjal 25.46,74.62
step
  talk Personal Survival Pack##254644
  accept Contents Under Pressure##93383 |goto Mount Hyjal 25.46,74.62
step
  note Wait until you can safely open the Personal Survival Pack.
  talk Personal Survival Pack##254644
  turnin Contents Under Pressure##93383 |goto Mount Hyjal 25.46,74.62
step
  note Bring 5 owl bodies to Elder Pinespeaker in Barkskin Burrow in Hyjal.
  collect 5 Intact Owl Body##262816 |q 93833 |goto Mount Hyjal 34.46,67.93 |tip {dropsfrom}Hyjal Owl
step
  note Defeat 9 Deadwood Den Guardians and return to Brerufa.
  kill Deadwood Den Guardian##252063 |q 93952 |goto Mount Hyjal 37.89,68.4
step
  note Kill Chieftain Deeproar and return his staff to Elder Pinespeaker in Barkskin Burrow.
  kill Chieftain Deeproar##259875 |q 95107 |goto Mount Hyjal 28.63,59.77
step
  note Retrieve 8 Watcher's Eyes for Eluneth.
  collect 8 Watcher's Eye##273322 |q 90865 |goto Mount Hyjal 22.89,46 |tip {dropsfrom}Eternal Sentry
step
  note Destroy 6 Eternal Sentry gargoyles in the destroyed Alliance base in upper Hyjal and return to Elder Mistpaw.
  kill Eternal Sentry##249237 |q 93832 |goto Mount Hyjal 22.89,46
step
  only not completed(92609) not haveq(92609)
  talk Hnaz Blunderflame##249968
  turnin Feathers in Flight##95027 |goto Mount Hyjal 15.64,49.99
step
  only level>=57
  talk Sefira Everbright##244517
  accept Final Death##92591 |goto Mount Hyjal 15.67,54.66
step
  talk Eluneth##264089
  turnin Eyes of the Watchers##90865 |goto Mount Hyjal 18.78,62.01
step
  only haveq(92591)
  note Use the Survivor's Torch on the Bone Pile, then collect the Reanimator's Amulet.
  collect Reanimator's Amulet##268573 |q 92591 |goto Mount Hyjal 25.51,53.88 |tip {dropsfrom}Scourge Reanimator
step
  only haveq(92591)
  talk Sefira Everbright##244517
  turnin Final Death##92591 |goto Mount Hyjal 15.67,54.66
step
  only not completed(95026) not completed(95248) not haveq(95026) not haveq(95248) completed(92591)
  talk Sefira Everbright##244517
  accept To the Summit of Eternity##91688 |goto Mount Hyjal 15.67,54.66
step
  only level>=56
  talk Galvinquam Leafsyre##267109
  accept Trail Assist##96991 |goto Mount Hyjal 32.89,54.44
step
  talk Johun "Punchy" Dillas##249234
  accept Area Denial Skunks##92015 |goto Mount Hyjal 43.91,37.81
step
  talk Elaena Moonwhisper##263406
  accept Siphoned Ephemeral Essence##92960 |goto Mount Hyjal 43.77,32.24
step
  talk Witherbeard##249052
  accept Stemming the Demon Tide##95793 |goto Mount Hyjal 43.74,31.94
step
  note Make skunks leave the area around Johun's equipment without killing them.
  talk Johun "Punchy" Dillas##249234
  turnin Area Denial Skunks##92015 |goto Mount Hyjal 43.91,37.81
step
  talk Johun "Punchy" Dillas##249234
  accept Fox Hole##92014 |goto Mount Hyjal 43.91,37.81
step
  only level>=56
  talk Yashiro##267121
  accept Blademaster's Bonfires##96959 |goto Mount Hyjal 49.33,32.63
step
  note Scavenge the remains of the Horde base and return 5 Frayed Wire, 5 Scrap Metal, and 5 Calcified Excrement to Kaylaena.
  collect 5 Frayed Wire##250775 |q 92011/1 |goto Mount Hyjal 53.11,34.11 |tip {dropsfrom}Tangle of Wire
  collect Warped Metal Scrap##269246 |q 92011/3 |goto Mount Hyjal 57.56,37.94 |tip {dropsfrom}Tarnished Shield Dome, Rusting Metal Chunk
  collect 5 Calcified Excrement##269244 |q 92011 |goto Mount Hyjal 60.62,39.55
step
  note Slay 12 Felguard Sentinels in Dae'gun.
  kill Felguard Sentinel##249229 |q 95793 |goto Mount Hyjal 50.86,36.41
step
  only haveq(96959)
  note Light the two bonfires in Dae'gun and return to Yashiro.
  talk Yashiro##267121
  turnin Blademaster's Bonfires##96959 |goto Mount Hyjal 49.33,32.63
step
  only haveq(91877)
  note Find Maerion Thaelemaches somewhere on Mount Hyjal.
  talk Maerion Thaelemaches##267097
  turnin Demon Hunter's Hunter##91877 |goto Mount Hyjal 63.41,26.1
step
  only level>=56
  talk Maerion Thaelemaches##267097
  accept Maerion's Misery##97009 |goto Mount Hyjal 63.41,26.1
step
  note Retrieve 6 Ephemeral Essences for Elaena Moonwhisper.
  collect 6 Ephemeral Essence##271220 |q 92960 |goto Mount Hyjal 64.36,35.43 |tip {dropsfrom}Defiling Hound
step
  only haveq(97009)
  note Bring 12 Felhound Spikes to Maerion Thaelemaches in Dae'gun.
  collect 12 Felhound Spike##276100 |q 97009 |goto Mount Hyjal 64.36,35.43 |tip {dropsfrom}Defiling Hound
step
  only haveq(97009)
  talk Maerion Thaelemaches##267097
  turnin Maerion's Misery##97009 |goto Mount Hyjal 63.41,26.1
step
  only completed(97009)
  talk Maerion Thaelemaches##267097
  accept Blind Vengeance##97010 |goto Mount Hyjal 63.41,26.1
step
  only haveq(97010)
  note Climb to the top of the Horde Mage Tower and throw an Explosive Runeshard to signal for Maerion Thaelemaches to launch his attack on the demons.
  talk Maerion Thaelemaches##267097
  turnin Blind Vengeance##97010 |goto Mount Hyjal 63.41,26.1
step
  talk Elaena Moonwhisper##263406
  turnin Siphoned Ephemeral Essence##92960 |goto Mount Hyjal 43.77,32.24
step
  talk Witherbeard##249052
  turnin Stemming the Demon Tide##95793 |goto Mount Hyjal 43.74,31.94
step
  note Return 9 Rustleaf Fox Tails to Johun "Punchy" Dillas in Hyjal.
  collect 9 Rustleaf Fox Tail##274586 |q 92014 |goto Mount Hyjal 42.16,48.72 |tip {dropsfrom}Rustleaf Fox
step
  talk Johun "Punchy" Dillas##249234
  turnin Fox Hole##92014 |goto Mount Hyjal 43.91,37.81
step
  talk Johun "Punchy" Dillas##249234
  accept Resupply##96992 |goto Mount Hyjal 43.91,37.81
step
  note Look through the burned buildings in the Cradle of Tranquility for 6 Metal Brackets and 30 Nails and return to Johun "Punchy" Dillas in Hyjal.
  collect 6 Metal Bracket##276088 |q 96992/2 |goto Mount Hyjal 33.31,42.28 |tip {dropsfrom}Bracket
  collect 30 Nail##276087 |q 96992 |goto Mount Hyjal 33.85,48.17 |tip {dropsfrom}Pile of Nails
step
  talk Johun "Punchy" Dillas##249234
  turnin Resupply##96992 |goto Mount Hyjal 43.91,37.81
step
  talk Johun "Punchy" Dillas##249234
  accept Avalanche of Corruption##92593 |goto Mount Hyjal 43.91,37.81
step
  note Enter Dae'gun and locate a high vantage point, then report details to Johun.
  goto Mount Hyjal 53.69,33.45 |tip Dae'gun Horde Tower scouted
step
  talk Johun "Punchy" Dillas##249234
  turnin Avalanche of Corruption##92593 |goto Mount Hyjal 43.91,37.81
step
  talk Johun "Punchy" Dillas##249234
  accept Gathering Storm##96494 |goto Mount Hyjal 43.91,37.81
step
  only not completed(95026) not completed(95248) not haveq(95026) not haveq(95248) haveq(91688)
  note Travel to the Summit of Eternity and speak with the druids about the survivor village.
  talk Thisalee Crow##254915
  turnin To the Summit of Eternity##91688 |goto Mount Hyjal 68.99,49.99
step
  only haveq(96991)
  note Deliver Galvinquam's Belongings to Marn Euhron in the Summit.
  talk Marn Euhorn##264795
  turnin Trail Assist##96991 |goto Mount Hyjal 68.3,46.71
step
  talk Sebelia##243815
  accept Mending Communications##93197 |goto Mount Hyjal 70.87,51.55
step
  talk Marn Euhorn##264795
  accept Cleansing Winds##92017 |goto Mount Hyjal 68.3,46.71
step
  note Find the Blackthorne reinforcement point at the entrance to Hyjal Summit.
  goto Mount Hyjal 71.98,48.36 |tip Find the entrance to Hyjal Summit
step
  talk Kaylaena Springwhisper##249235
  turnin Rubble Rummage##92011 |goto Mount Hyjal 60.1,61.18
step
  talk Kaylaena Springwhisper##249235
  accept Siegecraft##92328 |goto Mount Hyjal 60.1,61.18
step
  note Turn the two gears and connect the two battery terminals on both sides of Kaylaena's Glaive Thrower.
  talk Kaylaena Springwhisper##249235
  turnin Siegecraft##92328 |goto Mount Hyjal 60.1,61.18
step
  talk Phoebe Highfeather##260825
  turnin Highfeather Helper##92147 |goto Mount Hyjal 54.48,63.91
step
  note Seek Phoebe Highfeather at the Shrine of Aviana.
  talk Phoebe Highfeather##260825
  turnin Past Wing and Claw##96145 |goto Mount Hyjal 54.48,63.91
step
  talk Phoebe Highfeather##260825
  turnin Tarnished Treasures##96252 |goto Mount Hyjal 54.48,63.91
step
  talk Phoebe Highfeather##260825
  turnin Fetid Corruption##96296 |goto Mount Hyjal 54.48,63.91
step
  talk Skylord Omnuron##254131
  accept Spear of the Skylord##91883 |goto Mount Hyjal 54.31,63.95
step
  note Slay Zarrat Wormwing and return Omnuron's Spear.
  collect Omnuron's Spear##268998 |q 91883 |goto Mount Hyjal 50.51,57.61 |tip {dropsfrom}Zarrat Wormwing
step
  talk Skylord Omnuron##254131
  turnin Spear of the Skylord##91883 |goto Mount Hyjal 54.31,63.95
step
  note Collect 5 Grand Hippogryph Feathers and 3 Oily Chimaera Hair for Marn.
  collect 5 Grand Hippogryph Feather##274287 |q 92017/1 |goto Mount Hyjal 36.48,66.77 |tip {dropsfrom}Mountain Squallclimber
  collect 3 Oily Chimaera Hair##274288 |q 92017 |goto Mount Hyjal 69.96,42.92 |tip {dropsfrom}Wildbreath Chimaerok
step
  talk Elder Mistpaw##256627
  turnin Shatter the Stonewatchers##93832 |goto Mount Hyjal 21.77,78.98
step
  talk Elder Pinespeaker##256650
  turnin Wicked Wisdom##93833 |goto Mount Hyjal 21.77,79.37
step
  talk Brerufa##256978
  turnin Balance Through Strength##93952 |goto Mount Hyjal 20.56,71.73
step
  talk Elder Pinespeaker##256650
  turnin Deeproar Down##95107 |goto Mount Hyjal 21.77,79.37
step
  talk Brerufa##256978
  accept Of Friend and Fur##92111 |goto Mount Hyjal 20.56,71.73
step
  note Enter Barkskin Burrow and find the furbolg they call Osi.
  talk Osi Mistpaw##256646
  turnin Of Friend and Fur##92111 |goto Mount Hyjal 21.08,80.19
step
  talk Osi Mistpaw##256646
  accept Sweetpaw Jam##93831 |goto Mount Hyjal 21.08,80.19
step
  note Gather 30 Bear Berries from Hyjal and return to Osi Mistpaw.
  collect 30 Bear Berries##262818 |q 93831 |goto Mount Hyjal 30.62,73.41
step
  talk Osi Mistpaw##256646
  turnin Sweetpaw Jam##93831 |goto Mount Hyjal 21.08,80.19
step
  talk Osi Mistpaw##256646
  accept Meet the Elders##91697 |goto Mount Hyjal 21.08,80.19
step
  note Find and speak with Elder Mistpaw and Elder Pinespeaker within Barkskin Burrow.
  talk Elder Mistpaw##256627
  turnin Meet the Elders##91697 |goto Mount Hyjal 21.77,78.98
step
  talk Suma Mossmane##260661
  accept Barkbound Blessings##93825 |goto Mount Hyjal 20.82,79.81
step
  talk Elder Mistpaw##256627
  accept Deal Dread to Deadwood##93826 |goto Mount Hyjal 21.77,78.98
step
  talk Thobon Sapclaw##256660
  accept Windswept Wards##93827 |goto Mount Hyjal 18.52,78.6
step
  note Gather 12 clumps of Moonveil Moss and return to Suma Mossmane.
  collect 12 Moonveil Moss##262802 |q 93825 |goto Mount Hyjal 32.29,68.02
step
  note Defeat 8 Deadwood Totemics and 8 Deadwood Fel-Tenders and return to Elder Pinespeaker.
  kill Deadwood Fel-Tender##252096 |q 93826/2 |goto Mount Hyjal 33.23,68.49
  kill Deadwood Totemic##252116 |q 93826 |goto Mount Hyjal 33.1,69.82
step
  talk Suma Mossmane##260661
  turnin Barkbound Blessings##93825 |goto Mount Hyjal 20.82,79.81
step
  talk Elder Pinespeaker##256650
  turnin Deal Dread to Deadwood##93826 |goto Mount Hyjal 21.77,79.37
step
  note Find the Veteran of the Third War's scabbard near Elderwild.
  turnin Anywhere But Here##92100 |goto Mount Hyjal 8.75,46.48
step
  click Embroidered Scabbard##654121
  accept Battle Recall##96550 |goto Mount Hyjal 8.75,46.48
step
  note Use the Embroidered Scabbard to speak with the war veteran and hear his story at the overlook in Elderwild.
  talk Veteran of the Third War##255038
  turnin Battle Recall##96550 |goto Mount Hyjal 8.8,46.48
step
  talk Veteran of the Third War##255038
  accept Lifted by Legacy##92101 |goto Mount Hyjal 8.8,46.48
step
  talk Johun "Punchy" Dillas##249234
  turnin Gathering Storm##96494 |goto Mount Hyjal 43.91,37.81
step
  talk Johun "Punchy" Dillas##249234
  accept A Shaw Deal##96529 |goto Mount Hyjal 43.91,37.81
step
  only level>=60
  talk Elaena Moonwhisper##263406
  accept Drawing Down the Malevolent##96003 |goto Mount Hyjal 43.77,32.24
step
  only completed(96959) level>=60
  talk Yashiro##267121
  accept Yashiro's Windwalk##96983 |goto Mount Hyjal 49.33,32.63
step
  only haveq(96003)
  note Use the Eye of Endless Influence on Bethra'zel and Mazzogore to siphon their power, then deliver the killing blow.
  use Mazzogore the Weak##252457 |q 96003/2 |goto Mount Hyjal 50.66,38.19 |tip {useit}
  use Bethra'zel the Feeble##263394 |q 96003 |goto Mount Hyjal 58.84,32.85 |tip {useit}
step
  only haveq(96983)
  note Fight your way through Dae'gun with Yashiro.
  kill Doomguard Xarkul##267439 |q 96983 |goto Mount Hyjal 61.8,31.95 |elite
step
  only haveq(96983)
  talk Yashiro##267121
  turnin Yashiro's Windwalk##96983 |goto Mount Hyjal 49.33,32.63
step
  only haveq(96003)
  talk Elaena Moonwhisper##263406
  turnin Drawing Down the Malevolent##96003 |goto Mount Hyjal 43.77,32.24
step
  only completed(96003)
  talk Elaena Moonwhisper##263406
  accept As the Crow Flies##96025 |goto Mount Hyjal 43.77,32.24
step
  note Collect 16 Enchanted Harpy Amulet and return to Thobon Sapclaw.
  collect 16 Enchanted Harpy Amulet##263028 |q 93827 |goto Mount Hyjal 48.47,55.66 |tip {dropsfrom}Wormwing Harpy, Wormwing Windwitch, Wormwing Ambusher
step
  talk Kaylaena Springwhisper##249235
  accept Drum Up Trouble##92329 |goto Mount Hyjal 60.1,61.18
step
  note Walk to the ridge south of Kaylaena's workshop and find a way to make a loud distracting commotion to draw the chimaera Ghansurok in range to be attacked.
  talk Kaylaena Springwhisper##249235
  turnin Drum Up Trouble##92329 |goto Mount Hyjal 60.1,61.18
step
  talk Marn Euhorn##264795
  turnin Cleansing Winds##92017 |goto Mount Hyjal 68.3,46.71
step
  only haveq(96025)
  note Meet Elaena's friend at the summit in Hyjal.
  talk Thisalee Crow##254915
  turnin As the Crow Flies##96025 |goto Mount Hyjal 68.99,49.99
step
  talk Marn Euhorn##264795
  accept Rootwork##92016 |goto Mount Hyjal 68.3,46.71
step
  talk Toron Rockhoof##243855
  accept Twisted Tools##92533 |goto Mount Hyjal 68.88,48.35
step
  only level>=57
  talk Tiala Whitemane##40833
  accept A Thorn in the Paw##93407 |goto Mount Hyjal 68.85,50.6
step
  only level>=60
  talk Rhylin Stonethorn##255151
  accept Blackthorne Blackout##93422 |goto Mount Hyjal 70.66,51.25
step
  talk Thisalee Crow##254915
  accept Cult Closure##93584 |goto Mount Hyjal 68.99,49.99
step
  talk Marn Euhorn##264795
  accept Power Wash##96301 |goto Mount Hyjal 68.3,46.71
step
  talk Marn Euhorn##264795
  accept Arch Absolution##96302 |goto Mount Hyjal 68.3,46.71
step
  talk Tiala Whitemane##40833
  accept Return to Jereman##99670 |goto Mount Hyjal 68.85,50.6
step
  note Take Marn's incense and allow the smoke to ward the air around Archimonde's remains.
  talk Marn Euhorn##264795
  turnin Arch Absolution##96302 |goto Mount Hyjal 68.3,46.71
step
  only level>=57
  click Bookshelf##710894
  accept Challenger of the Gods##93521 |goto Mount Hyjal 76.92,35.43
step
  note Enter the Well of Eternity and examine the roots of Nordrassil.
  goto Mount Hyjal 74.31,36.39 |tip Nordrassil's deep roots examined
step
  note Recover a Wicked Ritualist's Kris and a Recoiling Gnarlybark Staff from Blackthorne cultists.
  collect Recoiling Gnarlybark Staff##273828 |q 92533/2 |goto Mount Hyjal 73.01,34.16 |tip {dropsfrom}Blackthorne Adept, Blackthorne Priest
  collect Wicked Ritualist's Kris##273832 |q 92533 |goto Mount Hyjal 72.35,40.4 |tip {dropsfrom}Blackthorne Cultist, Blackthorne Outrunner
step
  only haveq(93407)
  note Find thorn seeds in the forests at the summit of Mount Hyjal and bring them back to Tiala Whitemane.
  collect Thorn Seed##263227 |q 93407 |goto Mount Hyjal 74.64,39.82 |tip {dropsfrom}Thorn Bush
step
  only haveq(93422)
  note Kill the Blackthorne Courier and confiscate her message.
  kill Blackthorne Courier##264508 |q 93422 |goto Mount Hyjal 76.72,32.84 |elite
step
  note Kill 10 Blackthorne Adepts and 10 Wild-branded Cultists.
  kill Blackthorne Adept##264570 |q 93584/2 |goto Mount Hyjal 73.01,34.16
  kill Blackthorne Cultist##249551 |q 93584 |goto Mount Hyjal 72.35,40.4
step
  note Enter the Well of Eternity and observe its effects on the Venom-dripping Heart.
  goto Mount Hyjal 73.55,39.17 |tip Well of Eternity entered with the chimaera heart
step
  talk Marn Euhorn##264795
  turnin Rootwork##92016 |goto Mount Hyjal 68.3,46.71
step
  talk Toron Rockhoof##243855
  turnin Twisted Tools##92533 |goto Mount Hyjal 68.88,48.35
step
  only haveq(93407)
  talk Tiala Whitemane##40833
  turnin A Thorn in the Paw##93407 |goto Mount Hyjal 68.85,50.6
step
  only haveq(93422)
  talk Rhylin Stonethorn##255151
  turnin Blackthorne Blackout##93422 |goto Mount Hyjal 70.66,51.25
step
  only haveq(93521)
  note Take Ve'han's Research Notes to Tiala Whitemane.
  talk Tiala Whitemane##40833
  turnin Challenger of the Gods##93521 |goto Mount Hyjal 68.85,50.6
step
  talk Thisalee Crow##254915
  turnin Cult Closure##93584 |goto Mount Hyjal 68.99,49.99
step
  talk Marn Euhorn##264795
  turnin Power Wash##96301 |goto Mount Hyjal 68.3,46.71
step
  only completed(93407)
  talk Tiala Whitemane##40833
  accept Summit Sentries##93127 |goto Mount Hyjal 68.85,50.6
step
  only completed(93407) level>=60
  talk Fayran Elthas##41861
  accept Bait the Beast##93444 |goto Mount Hyjal 68.71,46.8
step
  only completed(93407)
  talk Tiala Whitemane##40833
  accept A Thorny Solution##93547 |goto Mount Hyjal 68.85,50.6
step
  talk Thisalee Crow##254915
  accept Memory Mist##96303 |goto Mount Hyjal 68.99,49.99
step
  note Use the Enchanted Branch to release 5 wisps around Nordrassil.
  get Memory Mist |q 96303
step
  only haveq(93127)
  note Reactivate the sentinel stones north, west, and south around the Blackthorne cultists.
  talk Tiala Whitemane##40833
  turnin Summit Sentries##93127 |goto Mount Hyjal 68.85,50.6
step
  only haveq(93547)
  note Plant thorn seeds near the inn, the storage tower, and the grouping of trees at the loyalist druid camp.
  talk Tiala Whitemane##40833
  turnin A Thorny Solution##93547 |goto Mount Hyjal 68.85,50.6
step
  talk Thisalee Crow##254915
  turnin Memory Mist##96303 |goto Mount Hyjal 68.99,49.99
step
  only haveq(93444)
  note Kill a Nightsaber Guardian, then bait out and kill Ghansurok using the Nightsaber Guardian haunch on the northern ridge of the summit.
  kill Ghansurok##251488 |q 93444 |goto Mount Hyjal 60.86,63.03 |elite
step
  only haveq(93444)
  talk Fayran Elthas##41861
  turnin Bait the Beast##93444 |goto Mount Hyjal 68.71,46.8
step
  note Return to Jereman at the Cradle of Tranquility.
  talk Jereman##267158
  turnin Return to Jereman##99670 |goto Mount Hyjal 41.15,45.16
step
  only completed(92102) completed(93567)
  talk Veteran of the Third War##265375
  accept Soldier's Solace##96558 |goto Mount Hyjal 27.5,50.9
step
  only completed(92102) haveq(96558)
  note Recover the Battle Cache buried on Mount Hyjal.
  turnin Soldier's Solace##96558 |goto Mount Hyjal 29,52.8
step
  talk Thobon Sapclaw##256660
  turnin Windswept Wards##93827 |goto Mount Hyjal 18.52,78.6
step
  note Take mail parcels from Sebelia at the summit camp on Mount Hyjal to Innkeeper Vizzie in Everlook.
  talk Innkeeper Vizzie##11118
  turnin Mending Communications##93197 |goto Winterspring 61.36,38.83 |tip {turninat}Winterspring
step
  talk Innkeeper Vizzie##11118
  accept Unfrozen Deliveries##93406 |goto Winterspring 61.36,38.83
step
  note Find 4 pieces of Missing Mail in the hills north of Everlook and bring it back to Innkeeper Vizzie.
  collect 4 Missing Mail##258323 |q 93406 |goto Winterspring 43.59,38.51 |tip {dropsfrom}Rogue Ice Thistle, Ice Thistle Yeti, Ice Thistle Matriarch
step
  talk Innkeeper Vizzie##11118
  turnin Unfrozen Deliveries##93406 |goto Winterspring 61.36,38.83 |tip {turninat}Winterspring
step
  talk Innkeeper Vizzie##11118
  accept Top of the Post##93269 |goto Winterspring 61.36,38.83
step
  note Find the Veteran of the Third War's markings of significance on the Great Lift.
  goto Thousand Needles 31.93,23.99 |tip Tobin's spot visited
step
  turnin Lifted by Legacy##92101 |goto Thousand Needles 31.93,24.05 |tip {turninat}Thousand Needles
step
  note Travel to Nighthaven, in Moonglade, and ask Dendrite Starblaze for assistance on Ketharas' behalf.
  talk Dendrite Starblaze##11802
  turnin Aid from Moonglade##92612 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  talk Dendrite Starblaze##11802
  accept The Ancient, Orokai##96209 |goto Moonglade 56.21,30.64
step
  note Seek out Orokai in Moonglade.
  talk Orokai##216289
  turnin The Ancient, Orokai##96209 |goto Moonglade 41.45,43.63 |tip {turninat}Moonglade
step
  talk Orokai##216289
  accept Stolen Power##95006 |goto Moonglade 41.45,43.63
step
  note Speak with Orokai when you are ready to see what he learned from the Faintly Glowing Branch.
  talk Dendrite Starblaze##11802
  turnin Stolen Power##95006 |goto Moonglade 56.21,30.64 |tip {turninat}Moonglade
step
  talk Dendrite Starblaze##11802
  accept The Pact##93773 |goto Moonglade 56.21,30.64
step
  note Take mail from Everlook up to Innkeeper Sebelia on the summit of Mount Hyjal.
  talk Sebelia##243815
  turnin Top of the Post##93269 |goto Mount Hyjal 70.87,51.55
step
  note Report back Ketharas on Mount Hyjal.
  talk Ketharas##256222
  turnin The Pact##93773 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept Taking to New Heights##92171 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept The Capricious Corvid##96930 |goto Mount Hyjal 73.34,81.88
step
  note Return to the Curious Crow.
  talk Curious Crow##257753
  turnin The Capricious Corvid##96930 |goto Mount Hyjal 48.26,85.72
step
  talk Curious Crow##257753
  accept Heading Up the Mountain##96931 |goto Mount Hyjal 48.26,85.72
step
  note Travel to the Shrine of Aviana on Mount Hyjal and seek out Skylord Omnuron for aid.
  talk Skylord Omnuron##254131
  turnin Taking to New Heights##92171 |goto Mount Hyjal 54.31,63.95
step
  talk Skylord Omnuron##254131
  accept A Bit of the Sky##92500 |goto Mount Hyjal 54.31,63.95
step
  note Find the Jewel of the Horizon in the Wormwing harpy nests on Mount Hyjal and bring it to Ketharas.
  collect The Jewel of the Horizon##272974 |q 92500 |goto Mount Hyjal 47.75,59.45
step
  note Touch the Crow Effigy on the bridge overlooking the Cradle of Tranquility to call the Wild God, Jereman.
  talk Jereman##267158
  turnin Heading Up the Mountain##96931 |goto Mount Hyjal 41.15,45.16
step
  talk Jereman##267158
  accept Violent Venison##96978 |goto Mount Hyjal 41.15,45.16
step
  talk Jereman##267158
  accept The Balance of Life and Death##96939 |goto Mount Hyjal 41.15,45.16
step
  talk Jereman##267158
  accept A Clever Creature##96964 |goto Mount Hyjal 41.15,45.16
step
  note Speak to the Wild God, Kala'th.
  talk Kala'th##255693
  turnin Violent Venison##96978 |goto Mount Hyjal 28.68,43.04
step
  talk Kala'th##255693
  accept Prey and Predator##93617 |goto Mount Hyjal 28.68,43.04
step
  note Dissuade stags from acting as predators.
  kill Predatory Hyjal Stag##256809 |q 93617 |goto Mount Hyjal 35.16,41.81
step
  talk Kala'th##255693
  turnin Prey and Predator##93617 |goto Mount Hyjal 28.68,43.04
step
  note Speak to the Wild God, Marrosis.
  talk Marrosis##267113
  turnin The Balance of Life and Death##96939 |goto Mount Hyjal 27.1,49.99
step
  talk Marrosis##267113
  accept Stolen Life##92317 |goto Mount Hyjal 27.1,49.99
step
  talk Marrosis##267113
  accept Bone Sweet Bone##96957 |goto Mount Hyjal 27.1,49.99
step
  note Collect 20 Sun-Bleached Bones.
  collect 20 Sun-Bleached Bone##275927 |q 96957 |goto Mount Hyjal 24.33,52.28 |tip {dropsfrom}Sun-Bleached Bonepile
step
  note Acquire a Drop of Stolen Life from the Scourge in the ruins on Mount Hyjal, then return to Ketharas.
  collect Drop of Stolen Life##272973 |q 92317 |goto Mount Hyjal 24.01,55.26 |tip {dropsfrom}Fleshflay Ravener, Forgotten Soldier, Fleshflayer Ravener
step
  talk Marrosis##267113
  turnin Bone Sweet Bone##96957 |goto Mount Hyjal 27.1,49.99
step
  note Speak to the Wild God Renalard.
  talk Renalard##259695
  turnin A Clever Creature##96964 |goto Mount Hyjal 60.04,49.35
step
  talk Renalard##259695
  accept Ashes of the Legion Ascent##92335 |goto Mount Hyjal 60.04,49.35
step
  talk Renalard##259695
  accept To Outfox a Demon##96971 |goto Mount Hyjal 60.04,49.35
step
  note Collect 8 Abandoned Supplies.
  collect 8 Abandoned Supplies##275958 |q 96971 |goto Mount Hyjal 51.49,38.02
step
  note Fetch a pinch of Azgalor's Ashes from the ruins of Dae'gun on Mount Hyjal.
  collect Azgalor's Ashes##253239 |q 92335 |goto Mount Hyjal 49.39,34.48 |tip {dropsfrom}Azgalor's Remains
step
  talk Renalard##259695
  turnin To Outfox a Demon##96971 |goto Mount Hyjal 60.04,49.35
step
  talk Ketharas##256222
  turnin A Bit of the Sky##92500 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  turnin Stolen Life##92317 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  turnin Ashes of the Legion Ascent##92335 |goto Mount Hyjal 73.34,81.88
step
  talk Ketharas##256222
  accept The Staff of the Mountain##90647 |goto Mount Hyjal 73.34,81.88
step
  note Bring the Staff of the Mountain to Tiala Whitemane at the Summit of Eternity.
  talk Tiala Whitemane##40833
  turnin The Staff of the Mountain##90647 |goto Mount Hyjal 68.85,50.6
step
  talk Tiala Whitemane##40833
  accept Paying Back the Pact##92169 |goto Mount Hyjal 68.85,50.6
step
  note Use the Staff of the Mountain on 10  members of the Blackthorne Pact on the Summit of Eternity to remove their wards and then kill them.
  get Paying Back the Pact |q 92169
step
  talk Tiala Whitemane##40833
  turnin Paying Back the Pact##92169 |goto Mount Hyjal 68.85,50.6
step
  only level>=60
  talk Tiala Whitemane##40833
  accept Ve'han's Fall##92833 |goto Mount Hyjal 68.85,50.6
step
  only haveq(92833)
  note Use the Staff of the Mountain to strip Ve'han Talongrasp of his stolen power, then destroy him.
  kill Ve'han Talongrasp##267182 |q 92833 |goto Mount Hyjal 76.02,34.05 |elite
step
  only haveq(92833)
  talk Tiala Whitemane##40833
  turnin Ve'han's Fall##92833 |goto Mount Hyjal 68.85,50.6
step
  only completed(92833)
  talk Tiala Whitemane##40833
  accept Work Well Done##93848 |goto Mount Hyjal 68.85,50.6
step
  only haveq(93848)
  note Return to Ketharas and inform him of what occurred at the Summit of Eternity.
  talk Ketharas##256222
  turnin Work Well Done##93848 |goto Mount Hyjal 73.34,81.88
step
  note Bring the Blackthorne Information to Master Mathias Shaw in Stormwind.
  talk Master Mathias Shaw##332
  turnin A Shaw Deal##96529 |goto Stormwind City 78.31,70.74 |tip {turninat}Stormwind City
step
  note {travel}Silithus
  goto Silithus 51.61,38.63
]])
