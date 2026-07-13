-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Thunder Bluff (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
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
  accept Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Lieutenant Lisande##16490
  accept Investigate the Scourge of Thunder Bluff##9264 |goto Thunder Bluff 31.08,71.38
step
  note Collect three Dim Necrotic Stones from the Scourge outside Thunder Bluff and investigate the glowing runic circles nearby their encampment.
  kill Skeletal Soldier##16422 |q 9264 |goto Elwynn Forest 34.39,52.45
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
  turnin Torch Catching##11923 |goto Thunder Bluff 21.72,25.35
step
  talk Lieutenant Lisande##16490
  turnin Investigate the Scourge of Thunder Bluff##9264 |goto Thunder Bluff 31.08,71.38
step
  talk Master Flame Eater##26113
  accept More Torch Catching##11925 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  accept More Torch Tossing##11926 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin More Torch Catching##11925 |goto Thunder Bluff 21.72,25.35
step
  talk Master Flame Eater##26113
  turnin More Torch Tossing##11926 |goto Thunder Bluff 21.72,25.35
]])
