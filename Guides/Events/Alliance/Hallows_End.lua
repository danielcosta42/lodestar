-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Hallow's End", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Darkcaller Yanka##15197
  accept Stinking Up Southshore##1657 |goto Tirisfal Glades 55.58,69.9
step
  talk Sergeant Hartman##15199
  accept Crashing the Wickerman Festival##1658 |goto Hillsbrad Foothills 50.43,56.89
step
  talk Costumed Orphan Matron##24519
  accept Stop the Fires!##11131 |goto Dun Morogh 46.19,53.14
step
  talk Masked Orphan Matron##23973
  accept Stop the Fires!##11219 |goto Durotar 52.57,41.2
step
  talk Costumed Orphan Matron##24519
  accept The Headless Horseman##11135 |goto Dun Morogh 46.19,53.14
step
  talk Masked Orphan Matron##23973
  accept The Headless Horseman##11220 |goto Durotar 52.57,41.2
step
  talk Darkcaller Yanka##15197
  turnin Stinking Up Southshore##1657 |goto Tirisfal Glades 55.58,69.9
step
  talk Sergeant Hartman##15199
  turnin Crashing the Wickerman Festival##1658 |goto Hillsbrad Foothills 50.43,56.89
step
  talk Costumed Orphan Matron##24519
  turnin Stop the Fires!##11131 |goto Dun Morogh 46.19,53.14
step
  talk Masked Orphan Matron##23973
  turnin Stop the Fires!##11219 |goto Durotar 52.57,41.2
step
  turnin Call the Headless Horseman##11405 |goto Scarlet Monastery - Dungeon -1,-1
step
  turnin The Headless Horseman##11135 |goto Scarlet Monastery - Dungeon -1,-1
step
  turnin The Headless Horseman##11220 |goto Scarlet Monastery - Dungeon -1,-1
]])
