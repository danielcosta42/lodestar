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
  limite de expansão.
- Sem caminho entre duas regiões grandes, uma segunda busca roda (issue #99). É o caso da rampa estreita da
  Revantusk Village ao platô de The Hinterlands, que a grade de 16,7 jd não tem. Essa busca aceita passo
  travado e célula sem passagem, a 30× o custo, e termina na célula mais perto quando o destino não tem
  passagem (mestre de voo no alto da torre). O caminho segue o terreno e cruza a barreira só onde ela é mais
  fina. Só vale passagem curta: até 5 passos travados seguidos e 10 no total. Penhasco longo, lava, a árvore de
  Teldrassil ou dez paredes não contam, e aí fica a reta.
  - Se a primeira busca estourou o limite de expansões, a segunda roda com um quinto do limite. Assim o nil que
    não tem jeito custa 20% a mais, não o dobro.
  - O caminho dela vem marcado (`solto`). Quem chama não o refaz a cada desvio do jogador: só depois de 300 jd,
    como na falha.
  - A reta fica para fora da grade, para a busca grande demais e para a barreira longa.
- **Passagens gravadas** (issue #99) cobrem a rampa, ponte, porta ou escada que a grade não tem.
  - O jogador anda o trecho com `/ls passagem`, ou com o botão em Configurações > Ferramentas, e repete para parar.
  - O Lodestar grava um ponto a cada 3 jd em coordenada de mundo e guarda em `ns.db.passages` o trecho de pelo
    menos 10 jd.
  - A busca liga, célula a célula, o caminho andado (`TR.Links`, também na detecção de ilha) e anda por ele como
    por terreno.
  - As do addon ficam em `PassagesData.lua`, com as que vierem dos relatórios. A primeira (#104) é a rampa do
    litoral da Revantusk Village até a beira da praia, gravada em jogo.
- **Volta grande demais por uma passagem não é caminho:** mais de 2× a reta e mais de 2000 jd a mais (as voltas
  pelo mar eram 5-13 km a mais; o pé de penhasco pela rampa, ~1 km). É a
  passagem virando a única saída de uma região que na grade não tem a de verdade: o platô de The Hinterlands só
  se liga pela rampa, e Aerie Peak → Chillwind descia a rampa e nadava 4 km pela costa.
  - Caminho só da grade fica como sempre: rotas costeiras longas são reais.
  - Recusado o da busca normal, tenta a segunda; se nada serve, fica a reta.
  - A saída real (Hillsbrad) entra como passagem quando for gravada.
  - `/ls report` leva as gravadas em texto curto (`c|zona|x,y;...`).
  - Gravar ou limpar refaz os caminhos da rota: larga a busca em curso, limpa as pernas a pé e redesenha.
  - A gravação para em voo, morte, salto grande num tique (teleporte, pedra de lar), velocidade acima de 18 jd/s
    (barco, zepelim) e quando troca de continente.
  - O trecho gravado caindo por mais de ~1 s é de mão única (um pulo comum não conta). Trecho de mais de 2 células entre dois pontos não liga nada: é salto.
  - O relatório não usa "|" (a caixa leria como código de textura ou link).
- A segunda busca poda, durante a própria busca, o passo que estoura o limite de travados. O orçamento dela é um
  terço do limite, ou um quinto se a primeira estourou. Nos 552 pares de mestres de voo, o pior caso foi de 2,4 s
  para 0,5 s.
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
3. Sem caminho na grade (cidade fechada, rampa estreita), o caminho cruza a barreira no ponto mais fino, sem
   erro; a reta só fora da grade.
