-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Orgrimmar (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Innkeeper Gryshka##6929
  accept Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  talk Lieutenant Dagel##16493
  accept Investigate the Scourge of Orgrimmar##9263 |goto Orgrimmar 51.56,81.41
step
  talk Innkeeper Gryshka##6929
  turnin Flexing for Nougat##8359 |goto Orgrimmar 54.1,68.41
step
  talk Lieutenant Dagel##16493
  turnin Investigate the Scourge of Orgrimmar##9263 |goto Orgrimmar 51.56,81.41
]])
