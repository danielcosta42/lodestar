# Caminho a pé pelo terreno (parte C)

Continuação do planejador de viagem (`specs/planejador-viagem/`, parte C da tabela de escopo).

## Problema

A perna a pé é uma reta: a seta e o pontilhado atravessam montanha, penhasco e lago.

## Fonte

O terreno do próprio cliente, lido do armazenamento CASC local (`tools/casc.py`, leitor nosso
do formato documentado; nenhuma ferramenta baixada): `Map` (wago.tools) dá o WDT de cada continente,
o WDT dá o ADT de cada quadrante, o ADT dá as alturas (MCVT, 9×9 por pedaço de 33,3 jd), os
buracos (onde entram prédios/cavernas) e a água (MH2O). Nada do Shortest Path Forever é copiado.

## Modelo (v1: só terreno)

- Grade de 16,7 jd por continente (2 × 2 células por pedaço, 32 × 32 por quadrante).
- Célula **passável** se o desnível dentro dela cabe numa rampa (≤ ~50°) e não tem buraco.
- **Ligação** com cada um dos 8 vizinhos se os dois são passáveis e o desnível entre os centros
  cabe na mesma rampa.
- **Água** funda (> 1,5 jd acima do chão): passável a nado, custo 2,5 × (nadar desmonta: montado, a
  terra rende ~2,4 × o nado); magma e lodo bloqueiam.
- Gerador `tools/gen_terrain.py` → `Terrain0.lua` (Reinos do Leste) e `Terrain1.lua` (Kalimdor):
  por quadrante, os bytes de ligação (8 bits) e o bit de água, compactados (RLE) em string.

## Em jogo

- `Terrain.lua`: decodifica só os quadrantes por onde a busca passa; A* com heurística octil e
  limite de expansão (sem caminho: a reta de sempre).
- A perna a pé atual ganha `path` (pontos de mundo); o mapa e o minimapa desenham o caminho; a
  seta aponta o ponto do caminho ~25 jd à frente; a distância é a que falta pelo caminho.
- Refaz o caminho ao trocar de perna ou se o jogador sair dele por mais de 40 jd.
- O planejador segue com a distância em reta (custo de pernas a pé) nesta versão.

## Fora (v2)

Prédios e cidades fechadas (WMO), pontes, elevadores, modelos (M2: árvores, pedras); caminho no
custo do planejador.

## Testes

- A* e decodificação com grade sintética (parede, água, sem caminho) em `tools/travel-tests.lua`.
- Gerador: `--demo` com pontos conhecidos (o chão do mestre de voo de Orgrimmar é passável; o mar
  ao lado de Ratchet é água).
- Dados reais: um caminho em Durotar contorna o que a reta atravessa (mais longo que a reta, e
  existe).

## Critérios de aceite (em jogo)

1. Num destino atrás de um morro, o pontilhado e a seta contornam o morro.
2. Atravessar um lago raso a pé ainda é permitido; o mar não vira caminho se houver volta por terra.
3. Sem caminho (cidade fechada), volta a reta, sem erro.
