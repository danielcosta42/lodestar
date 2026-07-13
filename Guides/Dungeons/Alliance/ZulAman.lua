-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dungeons/Alliance/Zul'Aman", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Budd Nedreck##23559
  accept Promises, Promises...##11132 |goto Ghostlands 70.34,67.84
step
  talk Prigmon##23761
  accept Tuskin' Raiders##11164 |goto Ghostlands 71.0,68.92
step
  talk Zungam##23897
  accept Playin' With Dolls##11195 |goto Zul'Aman - Raid -1,-1
step
  talk Budd Nedreck##23559
  turnin Promises, Promises...##11132 |goto Ghostlands 70.34,67.84
step
  talk Prigmon##23761
  turnin Tuskin' Raiders##11164 |goto Ghostlands 71.0,68.92
step
  talk Griftah##19227
  turnin Playin' With Dolls##11195 |goto Shattrath City 65.64,69.26
step
  talk Prigmon##23761
  accept A Troll Among Trolls##11165 |goto Ghostlands 71.0,68.92
step
  talk Budd Nedreck##23559
  accept X Marks... Your Doom!##11166 |goto Ghostlands 70.34,67.84
step
  note Enter Zul'Aman and visit Halazzi's Chamber, Jan'alai's Platform, and Akil'zon's Platform. Report the details of those areas to Budd, at his camp in the Ghostlands.
  kill Zul'Aman - Lynx God Invisman##23815 |q 11166 |goto Zul'Aman - Raid -1,-1
step
  talk Zungam##23897
  turnin A Troll Among Trolls##11165 |goto Zul'Aman - Raid -1,-1
step
  talk Budd Nedreck##23559
  turnin X Marks... Your Doom!##11166 |goto Ghostlands 70.34,67.84
step
  talk Budd Nedreck##23559
  accept Hex Lord? Hah!##11171 |goto Ghostlands 70.34,67.84
step
  note Budd Nedreck in Hatchet Hills wants you to kill Hex Lord Malacrass in Zul'Aman.
  kill Hex Lord Malacrass##24239 |q 11171 |goto Zul'Aman - Raid -1,-1
step
  talk Budd Nedreck##23559
  turnin Hex Lord? Hah!##11171 |goto Ghostlands 70.34,67.84
]])
