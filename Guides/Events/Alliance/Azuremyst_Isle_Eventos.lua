-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Azuremyst Isle (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Draenei Hunter
  talk Huntress Kella Nightbow##17614
  accept Taming the Beast##9591 |goto Azuremyst Isle 24.18,54.35
step
  talk Cryptographer Aurren##17232
  accept Learning the Language##9538 |goto Azuremyst Isle 49.38,50.96
step
  talk Magwin##17312
  accept A Cry For Help##9528 |goto Azuremyst Isle 13.62,73.22
step
  only Warlock
  talk Semid##17481
  accept Control##9595 |goto Azuremyst Isle 49.87,49.95
step
  only Warlock
  note Kill Murlocs of the Silting Shore to summon a Quel'dorei Magewraith, then destroy it. Afterwards, speak with Bati at the Vault of Lights in the Exodar.
  kill Quel'dorei Magewraith##17612 |q 9595
step
  only Draenei Hunter
  talk Huntress Kella Nightbow##17614
  turnin Taming the Beast##9591 |goto Azuremyst Isle 24.18,54.35
step
  talk Totem of Akida##17360
  turnin Learning the Language##9538 |goto Azuremyst Isle 49.44,50.98
step
  talk Cowlen##17311
  turnin A Cry For Help##9528
step
  only Warlock
  talk Bati##17514
  turnin Control##9595 |goto The Exodar 46.35,63.48
step
  only Draenei Hunter
  talk Huntress Kella Nightbow##17614
  accept Taming the Beast##9592 |goto Azuremyst Isle 24.18,54.35
step
  only Draenei Hunter
  talk Huntress Kella Nightbow##17614
  turnin Taming the Beast##9592 |goto Azuremyst Isle 24.18,54.35
step
  only Draenei Hunter
  talk Huntress Kella Nightbow##17614
  accept Taming the Beast##9593 |goto Azuremyst Isle 24.18,54.35
step
  only Draenei Hunter
  talk Huntress Kella Nightbow##17614
  turnin Taming the Beast##9593 |goto Azuremyst Isle 24.18,54.35
]])
