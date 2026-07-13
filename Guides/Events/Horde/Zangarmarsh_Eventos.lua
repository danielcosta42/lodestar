-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Events/Horde/Zangarmarsh (Eventos)", {
	faction = "Horde",
	author = "Lodestar Generator",
}, [[
step
  talk Lethyn Moonfire##17834
  accept Watcher Leesa'oh##9697 |goto Zangarmarsh 78.53,63.15
step
  talk Ysiel Windsinger##17841
  accept Disturbance at Umbrafen Lake##9716 |goto Zangarmarsh 78.4,62.02
step
  talk Kayra Longmane##17969
  accept Escape from Umbrafen##9752 |goto Zangarmarsh 83.38,85.54
step
  talk Fhwoor##17877
  accept Fhwoor Smash!##9729 |goto Zangarmarsh 19.79,50.83
step
  talk Watcher Leesa'oh##17831
  turnin Watcher Leesa'oh##9697 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  turnin Disturbance at Umbrafen Lake##9716 |goto Zangarmarsh 78.4,62.02
step
  talk Ysiel Windsinger##17841
  turnin Escape from Umbrafen##9752 |goto Zangarmarsh 78.4,62.02
step
  talk Gzhun'tt##17856
  turnin Fhwoor Smash!##9729 |goto Zangarmarsh 19.54,50.04
step
  talk Watcher Leesa'oh##17831
  accept Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  accept As the Crow Flies##9718 |goto Zangarmarsh 78.4,62.02
step
  talk Watcher Leesa'oh##17831
  turnin Observing the Sporelings##9701 |goto Zangarmarsh 23.32,66.21
step
  talk Ysiel Windsinger##17841
  turnin As the Crow Flies##9718 |goto Zangarmarsh 78.4,62.02
]])
