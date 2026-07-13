-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Azuremyst Isle (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  only Warlock
  talk Semid##17481
  accept Control##9595 |goto Azuremyst Isle 49.87,49.95
step
  only Warlock
  note Kill Murlocs of the Silting Shore to summon a Quel'dorei Magewraith, then destroy it. Afterwards, speak with Bati at the Vault of Lights in the Exodar.
  kill Quel'dorei Magewraith##17612 |q 9595
step
  only Warlock
  talk Bati##17514
  turnin Control##9595 |goto The Exodar 46.35,63.48
]])
