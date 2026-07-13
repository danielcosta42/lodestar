--=============================================================================
-- Guia de amostra (validação da engine). Conteúdo autoral; IDs/coords = dado
-- de jogo. O 1-70 real virá do gerador a partir do banco aberto (Questie).
--=============================================================================
local ADDON, ns = ...
if not ns then return end

ns:RegisterGuide("Leveling/Alliance/Elwynn Forest (1-6)", {
	faction = "Alliance",
	range = { 1, 6 },
	author = "Lodestar",
	-- next = "Leveling/Alliance/Elwynn Forest (6-10)",
}, [[
step
  note Bem-vindo a Elwynn Forest. Siga a seta; quests são aceitas/entregues sozinhas.
  talk Deputy Willem##823
  accept A Threat Within##783 |goto Elwynn Forest 48.17,42.95
  |tip Ele fica do lado de fora da abadia.

step
  talk Marshal McBride##197
  |tip Dentro do prédio da abadia.
  turnin A Threat Within##783 |goto 48.92,41.61
  accept Kobold Camp Cleanup##7 |goto 48.92,41.61

step
  talk Deputy Willem##823
  accept Eagan Peltskinner##5261 |goto 48.17,42.95

step
  talk Eagan Peltskinner##196
  |tip Do lado de fora, ao norte da abadia.
  turnin Eagan Peltskinner##5261 |goto 48.94,40.16
  accept Wolves Across the Border##33 |goto 48.94,40.16

step
  kill Timber Wolf##69, Young Wolf##299
  collect 8 Tough Wolf Meat##750 |q 33/1 |goto 46.38,38.58
  |tip Os lobos ficam a oeste da abadia.

step
  kill 10 Kobold Vermin##6 |q 7/1 |goto 47.49,36.15
  |tip No acampamento kobold, mais a oeste.

step
  talk Marshal McBride##197
  turnin Kobold Camp Cleanup##7 |goto 48.92,41.61

step
  talk Eagan Peltskinner##196
  turnin Wolves Across the Border##33 |goto 48.94,40.16
  ding 6
  |tip Você deve estar por volta do nível 6 agora. Fim da amostra!
]])
