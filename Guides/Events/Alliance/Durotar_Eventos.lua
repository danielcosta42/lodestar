-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Alliance/Durotar (Eventos)", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  talk Kali Remik##11814
  accept Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  talk Masked Orphan Matron##23973
  accept Stop the Fires!##11219 |goto Durotar 52.57,41.2
step
  talk Kali Remik##11814
  turnin Incoming Gumdrop##8358 |goto Durotar 56.13,74.24
step
  talk Masked Orphan Matron##23973
  turnin Stop the Fires!##11219 |goto Durotar 52.57,41.2
]])
