-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Thunder Bluff (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Tauren
  talk Turak Runetotem##3033
  accept Moonglade##5922 |goto Thunder Bluff 76.48,27.22
step
  talk Horde Warbringer##15350
  accept Call to Arms: Arathi Basin##11339 |goto Thunder Bluff 56.05,76.69
step
  talk Horde Warbringer##15350
  accept Call to Arms: Alterac Valley##11340 |goto Thunder Bluff 56.05,76.69
step
  talk Horde Warbringer##15350
  accept Call to Arms: Eye of the Storm##11341 |goto Thunder Bluff 56.05,76.69
step
  talk Horde Warbringer##15350
  accept Call to Arms: Warsong Gulch##11342 |goto Thunder Bluff 56.05,76.69
step
  talk Master Flame Eater##26113
  accept Torch Tossing##11922 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  accept Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Lieutenant Lisande##16490
  accept Investigate the Scourge of Thunder Bluff##9264 |goto Thunder Bluff 31.08,71.38
step
  talk Seereth Stonebreak##4049
  accept Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
  talk Hagar Lightninghoof##10539
  accept Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  talk Innkeeper Pala##6746
  accept Dancing for Marzipan##8360 |goto Thunder Bluff 45.81,64.71
step
  note Collect three Dim Necrotic Stones from the Scourge outside Thunder Bluff and investigate the glowing runic circles nearby their encampment.
  kill Skeletal Soldier##16422 |q 9264 |goto Elwynn Forest 34.39,52.45
step
  note Kill 15 Venture Co. Loggers, then return to Seereth Stonebreak on the border of Stonetalon and the Barrens.
  kill Venture Co. Logger##3989 |q 1062 |goto Stonetalon Mountains 66.4,52.26
step
  note Return the Alien Egg to Hagar Lightninghoof in Freewind Post.
  collect Alien Egg##175565 |q 4821 |goto Thousand Needles 52.34,55.25
step
  only Tauren
  talk Dendrite Starblaze##11802
  turnin Moonglade##5922 |goto Moonglade 56.21,30.64
step
  talk Horde Warbringer##15350
  turnin Call to Arms: Arathi Basin##11339 |goto Thunder Bluff 56.05,76.69
step
  talk Horde Warbringer##15350
  turnin Call to Arms: Alterac Valley##11340 |goto Thunder Bluff 56.05,76.69
step
  talk Horde Warbringer##15350
  turnin Call to Arms: Eye of the Storm##11341 |goto Thunder Bluff 56.05,76.69
step
  talk Horde Warbringer##15350
  turnin Call to Arms: Warsong Gulch##11342 |goto Thunder Bluff 56.05,76.69
step
  talk Master Flame Eater##26113
  turnin Torch Tossing##11922 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Lieutenant Lisande##16490
  turnin Investigate the Scourge of Thunder Bluff##9264 |goto Thunder Bluff 31.08,71.38
step
  talk Seereth Stonebreak##4049
  turnin Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
  talk Hagar Lightninghoof##10539
  turnin Alien Egg##4821 |goto Thousand Needles 44.64,50.29
step
  talk Innkeeper Pala##6746
  turnin Dancing for Marzipan##8360 |goto Thunder Bluff 45.81,64.71
step
  only Tauren
  talk Dendrite Starblaze##11802
  accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  talk Master Flame Eater##26113
  accept More Torch Catching##11925 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  accept More Torch Tossing##11926 |goto Thunder Bluff 21.72,25.35
step
  talk Seereth Stonebreak##4049
  accept The Elder Crone##1063 |goto The Barrens 35.26,27.88
step
  talk Hagar Lightninghoof##10539
  accept Serpent Wild##4865 |goto Thousand Needles 44.64,50.29
step
  only Tauren
  talk Dendrite Starblaze##11802
  turnin Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
step
  talk Master Flame Eater##26113
  turnin More Torch Catching##11925 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin More Torch Tossing##11926 |goto Thunder Bluff 21.72,25.35
step
  talk Magatha Grimtotem##4046
  turnin The Elder Crone##1063 |goto Thunder Bluff 69.85,30.91
step
  talk Motega Firemane##10428
  turnin Serpent Wild##4865 |goto Thousand Needles 21.54,32.35
step
  only Tauren
  talk Dendrite Starblaze##11802
  accept Back to Thunder Bluff##5932 |goto Moonglade 56.21,30.64
step
  talk Magatha Grimtotem##4046
  accept Forsaken Aid##1064 |goto Thunder Bluff 69.85,30.91
step
  talk Motega Firemane##10428
  accept Sacred Fire##5062 |goto Thousand Needles 21.54,32.35
step
  note Gather 10 bushels of Incendia Agave, and then consult Magatha Grimtotem on Elder Rise in Thunderbluff.
  collect Incendia Agave##175928 |q 5062 |goto Thousand Needles 36.04,35.43
step
  only Tauren
  talk Turak Runetotem##3033
  turnin Back to Thunder Bluff##5932 |goto Thunder Bluff 76.48,27.22
step
  talk Apothecary Zamah##3419
  turnin Forsaken Aid##1064 |goto Thunder Bluff 22.81,20.89
step
  talk Magatha Grimtotem##4046
  turnin Sacred Fire##5062 |goto Thunder Bluff 69.85,30.91
step
  only Tauren
  talk Turak Runetotem##3033
  accept Body and Heart##6002 |goto Thunder Bluff 76.48,27.22
step
  talk Apothecary Zamah##3419
  accept Journey to Tarren Mill##1065 |goto Thunder Bluff 22.81,20.89
step
  talk Magatha Grimtotem##4046
  accept Arikara##5088 |goto Thunder Bluff 69.85,30.91
step
  note Slay Arikara. Bring her remains and the Incendia powder to Motega Firemane in Whitereach Post as proof of your deed.
  get Arikara |q 5088 |goto Thunder Bluff 69.85,30.91
step
  only Tauren
  talk Turak Runetotem##3033
  turnin Body and Heart##6002 |goto Thunder Bluff 76.48,27.22
step
  talk Apothecary Lydon##2216
  turnin Journey to Tarren Mill##1065 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Motega Firemane##10428
  turnin Arikara##5088 |goto Thousand Needles 21.54,32.35
step
  talk Apothecary Lydon##2216
  accept Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  note Bring 5 Vials of Innocent Blood to Apothecary Lydon in Tarren Mill.
  kill Syndicate Shadow Mage##2244 |q 1066 |goto Hillsbrad Foothills 78.99,43.42
step
  talk Apothecary Lydon##2216
  turnin Blood of Innocents##1066 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Lydon##2216
  accept Return to Thunder Bluff##1067 |goto Hillsbrad Foothills 61.44,19.06
step
  talk Apothecary Zamah##3419
  turnin Return to Thunder Bluff##1067 |goto Thunder Bluff 22.81,20.89
step
  talk Apothecary Zamah##3419
  accept The Flying Machine Airport##1086 |goto Thunder Bluff 22.81,20.89
step
  talk Apothecary Zamah##3419
  turnin The Flying Machine Airport##1086 |goto Thunder Bluff 22.81,20.89
]])
